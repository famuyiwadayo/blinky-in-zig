const std = @import("std");
const microzig = @import("microzig");
const rp2040 = microzig.hal;
const time = rp2040.time;

const pins_config = rp2040.pins.GlobalConfiguration{ .GPIO7 = .{
    .name = "led",
    .direction = .out,
} };

pub fn main() !void {
    const pins = pins_config.apply();

    while (true) {
        pins.led.toggle();
        time.sleep_ms(1000);
    }
}
