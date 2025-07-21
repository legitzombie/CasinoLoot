public class animationTimer extends DelayCallback {

    private let count: Int32;

    let controller: ref<controller>;

    public func OnCreate(controller: ref<controller>) -> Void {
        this.controller = controller;
        this.count = 0;
    }

    public func Call() -> Void {
        ////modlog(n"DEBUG", s"timer start");
        this.controller.getSharedButton(0).SetText(s"                   \(4 - this.count)...");

        if this.count < 4 {
            GameInstance.GetDelaySystem(this.controller.getPlayer().GetGame()).DelayCallback(this, 1.0);
        }else {
            this.controller.getSharedButton(0).resetText();
            this.controller.wheel().setIconColor(colors.yellowGlow());
            //this.controller.wheel().addIcons();
        }

        this.count += 1;
    }

}


