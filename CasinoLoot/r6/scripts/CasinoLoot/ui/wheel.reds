import Codeware.UI.*
import Audioware.*

public class wheel {
    
    let controller: ref<controller>;

    let Canvas: ref<inkCanvas>;
    let canvasImage: ref<inkImage>;
    let canvasArrow: ref<inkImage>;
    let canvasIcons: array<ref<inkImage>>;
    
    let iconColor: HDRColor;

    let spinButton: ref<spinButton>;
    let spinSound: CName;

    let panel: ref<inkCompoundWidget>;
    let panelArrow: ref<inkCompoundWidget>;
    let player: ref<GameObject>;

    let TextureParts: array<String>;

    let lastPrizeIndex: Int32;
    let winStreak: Int32;
    let prizeHistory: array<ItemID>;
    let round: Int32;

    let spun: Bool;
    let free: Bool;

    public func OnCreate(controller: ref<controller>, gamemode: ref<gamemode>) -> Void {
        this.controller = controller;
        let panelBuilder = new panelBuilder();
        panelBuilder.OnCreate();

        this.spun = false;
        this.free = false;

        
        this.panelArrow = panelBuilder.horizontalPanel(this.controller, [3000.0, 75.0], [0.0, 75.0, 0.0, 0.0], [0.5, 0.5], 2, true, false);
        this.panel = panelBuilder.verticalPanel(this.controller, [2600.0, 1000.0], [0.0, 0.0, 0.0, 0.0], [0.5, 0.5], 3, true, true);

        this.player = this.controller.getPlayer();
        this.winStreak = 0;
        this.iconColor = colors.black();

        this.TextureParts = [
            "katana",
            "hammer",
            "knife",
            "revolver_power",
            "shotgun_power",
            "sniper",
            "rifle_preci",
            "subma_power"
        ];

        this.Canvas = new inkCanvas();
        this.canvasImage = new inkImage();
        this.canvasArrow = new inkImage();

        this.Initialize();
    }

    private func Initialize() -> Void {
        this.createCanvas();
        this.addCanvasImage();
        this.addIcons();
        this.addArrow();
        this.addSpinButton();
    }

    private func createCanvas() -> Void {
        this.Canvas.SetName(n"Gachaloot_Wheel");
        this.Canvas.SetSize(new Vector2(1024.0, 1024.0));
        this.Canvas.SetAnchor(inkEAnchor.Centered);
        this.Canvas.SetAnchorPoint(new Vector2(0.0, -0.25));
        this.Canvas.SetHAlign(inkEHorizontalAlign.Center);
        this.Canvas.SetVAlign(inkEVerticalAlign.Center);
        this.Canvas.SetInteractive(false);
        this.Canvas.Reparent(this.panel);
    }

    public func updateIconsColor(colors: array<HDRColor>) -> Void {
        let i = 0;
        while i < ArraySize(this.canvasIcons) {
            let item = this.canvasIcons[i];
            let color = colors[i];
            item.SetTintColor(color);
            item.Reparent(this.Canvas);
        }
    }

    private func addCanvasImage() -> Void {
        this.canvasImage.SetName(n"Gachaloot_Wheel_Image");
        this.canvasImage.SetSize(new Vector2(1024.0, 1024.0));
        this.canvasImage.SetAnchor(inkEAnchor.Fill);
        this.canvasImage.SetAnchorPoint(new Vector2(0.5, 0.5));
        this.canvasImage.SetHAlign(inkEHorizontalAlign.Center);
        this.canvasImage.SetVAlign(inkEVerticalAlign.Center);
        this.canvasImage.SetNineSliceScale(false); // optional, depends on asset
        this.canvasImage.SetInteractive(false);
        this.canvasImage.SetAtlasResource(r"base\\gameplay\\gui\\widgets\\gachaloot_wheel.inkatlas");
        this.canvasImage.SetTexturePart(n"gachaloot_wheel");
        this.canvasImage.SetRotation(25.0);
        this.canvasImage.Reparent(this.Canvas);
    }

    private func addIcons() -> Void {
        this.Canvas.RemoveAllChildren();
        this.addCanvasImage();
        let numSegments = 8;
        let radius = 320.0;
        let angleStep = 360.0 / Cast<Float>(numSegments);

        let i = 0;
        while i < numSegments {

            let z = 0;
            while z < 2 {
                let angleRad = Deg2Rad(angleStep * Cast<Float>(i));
                let x = radius * CosF(angleRad);
                let y = radius * SinF(angleRad);

                let icon: ref<inkImage> = new inkImage();
                icon.SetName(StringToName("SegmentIcon" + ToString(i)));
                icon.SetAtlasResource(ResRef.FromString("base\\gameplay\\gui\\common\\icons\\weapon_types.inkatlas"));
                icon.SetTexturePart(StringToName(this.TextureParts[i]));
                icon.SetSize(250.0, 75.0);
                icon.SetAnchor(inkEAnchor.Centered);
                icon.SetAnchorPoint(new Vector2(0.5, 0.5));
                icon.SetHAlign(inkEHorizontalAlign.Center);
                icon.SetVAlign(inkEVerticalAlign.Center);
                icon.SetMargin(new inkMargin(x, y, 0.0, 0.0));
                icon.SetFitToContent(false);
                icon.SetRotation(45.0 * Cast<Float>(i));
                icon.SetScale(new Vector2(0.9,0.9));
                if i == this.lastPrizeIndex && z == 1 && !this.spun {
                    icon.SetTintColor(this.iconColor);
                }else if z == 1 {
                    icon.SetTintColor(colors.black());
                }else {
                    icon.SetTintColor(colors.white());
                }
                icon.Reparent(this.Canvas);
                ArrayPush(this.canvasIcons, icon);  
                z += 1;
            }

            i += 1;
        }
    }

    public func freeSpin(isfree: Bool) -> Void {
		this.free = isfree;
	}

	public func isFree() -> Bool {
		return this.free;
	}

    public func setIconColor(color: HDRColor) -> Void {
        this.iconColor = color;
    }

    private func addArrow() -> Void {
        this.canvasArrow.SetName(n"PointerArrow");
        this.canvasArrow.SetAtlasResource(r"base\\gameplay\\gui\\common\\icons\\braindance_icons.inkatlas");
        this.canvasArrow.SetTexturePart(n"back_indicator"); 
        this.canvasArrow.SetSize(new Vector2(70.0, 70.0));
        this.canvasArrow.SetAnchor(inkEAnchor.CenterRight);
        this.canvasArrow.SetRotation(90.0);
        this.canvasArrow.SetHAlign(inkEHorizontalAlign.Right);
        this.canvasArrow.SetVAlign(inkEVerticalAlign.Center);
        this.canvasArrow.SetTintColor(colors.mint());
        this.canvasArrow.SetMargin(new inkMargin(0.0, 0.0, 0.0, 0.0));
        this.canvasArrow.Reparent(this.panelArrow);
    }

    private func addSpinButton() -> Void {
        this.spinButton = spinButton.Create(this.player, this.controller);
        this.controller.addSharedButton(this.spinButton);
        this.controller.money().isBrokeboi();
        this.spinButton.ToggleAnimations(true);
        this.spinButton.ToggleSounds(true);
        this.spinButton.Reparent(this.panel);
        this.spinButton.RegisterToCallback(n"OnBtnClick", this, n"OnSpinClicked");
    }

    private func spinWheel() -> Void {
        let roll: Float = RandF(); 

        let prizeIndex: Int32 = FloorF(roll * 8.0);
        this.lastPrizeIndex = prizeIndex;
        let degreesPerPrize: Float = 360.0 / 8.0;
        
        let targetAngle: Float = 270.0; 
        let prizeAngle: Float = Cast<Float>(prizeIndex) * degreesPerPrize;

        let totalSpin: Float = (360.0 * 4.0) + (targetAngle - prizeAngle);

        let anim: ref<inkAnimRotation> = new inkAnimRotation();
        anim.SetStartRotation(0.0);
        anim.SetEndRotation(totalSpin);
        anim.SetGoShortPath(false);
        anim.SetDuration(4.0);
        anim.SetMode(inkanimInterpolationMode.EasyOut);

        let def: ref<inkAnimDef> = new inkAnimDef();
        def.AddInterpolator(anim);

        let proxy: ref<inkAnimProxy> = this.Canvas.PlayAnimation(def);
        proxy.RegisterToCallback(inkanimEventType.OnFinish, this, n"OnSpinFinished");
        proxy.RegisterToCallback(inkanimEventType.OnStart, this, n"OnSpinStarted");
    }

    private func Pay() -> Void {
        if !this.free {
            this.controller.money().Remove(10000);
        }
    }

    private cb func OnSpinClicked(evt: ref<inkCustomEvent>) -> Bool {
        //ModLog(n"DEBUG", s"Spin Clicked");
        if !this.controller.money().isBrokeboi() && !this.free {
            this.Pay();
            this.spinWheel();
            return true;
        } else if this.free {
            this.spinWheel();
            return true; 
        }
        return false;
    }

    private cb func OnSpinStarted(animProxy: ref<inkAnimProxy>) {
        //ModLog(n"DEBUG", s"Spin Started");
        this.spun = true;
        this.freeSpin(false);
        this.addIcons();
        this.spinButton.ApplyDisabled();
        this.controller.sound().Play("dev_vm_processing_leelou_beans");

        let timer = new animationTimer();
        timer.OnCreate(this.controller);

        timer.Call();
    }


    private cb func OnSpinFinished(proxy: ref<inkAnimProxy>) -> Bool {
        //ModLog(n"DEBUG", s"Spin Finished");
        if this.controller.gamemode().isGameOver() {
            this.controller.gamemode().Reset();
        }
        this.spun = false;
        this.spinButton.ApplyDisabled();
        this.spinButton.resetText();

        this.controller.gamemode().colorJackpot(-1);
        this.controller.gamemode().Play(this.lastPrizeIndex);

        this.controller.money().isBrokeboi();

        return true;
    }


}
