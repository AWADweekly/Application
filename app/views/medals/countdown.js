function Countdown()
{
    this.start_time = "50";
    this.target_id = "#timer";
    this.name = "timer";
}

Countdown.prototype.init = function()
{
    this.reset();
    setInterval(this.name + ".tick()", 1000);
}

Countdown.prototype.reset = function()
{
    this.seconds = this.start_time;
    this.update_target();
}

Countdown.prototype.tick = function()
{
    if (this.seconds > 0) {
        this.seconds = this.seconds - 1;
        if (this.seconds == 0) {
            //send to new view
        }
    }
    this.update_target();
}

Countdown.prototype.update_target = function()
{
    seconds = this.seconds();
    //if (seconds < 10) seconds = "0" + seconds;
    $(this.target_id).val(seconds)
}


