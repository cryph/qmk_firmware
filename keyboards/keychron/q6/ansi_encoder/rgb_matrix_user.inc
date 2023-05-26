RGB_MATRIX_EFFECT(DIABLO_MODS)
#ifdef RGB_MATRIX_CUSTOM_EFFECT_IMPLS

// DIABLO = color1, mods = color2
bool DIABLO_MODS(effect_params_t* params) {
    RGB_MATRIX_USE_LIMITS(led_min, led_max);

    HSV hsv  = rgb_matrix_config.hsv;
    //RGB rgb2 = rgb_matrix_hsv_to_rgb(hsv);
    hsv.h += rgb_matrix_config.speed;
    RGB rgb1 = rgb_matrix_hsv_to_rgb(hsv);
    
    for (uint8_t i = led_min; i < led_max; i++) {
        RGB_MATRIX_TEST_LED_FLAGS();
        if (HAS_FLAGS(g_led_config.flags[i], 0x80)) {
            //rgb_matrix_set_color(i, rgb2.r, rgb2.g, rgb2.b);
            rgb_matrix_set_color(i, 0, 0, 255);
        } else {
            rgb_matrix_set_color(i, rgb1.r, rgb1.g, rgb1.b);
        }
    }
    return rgb_matrix_check_finished_leds(led_max);
}

#endif // RGB_MATRIX_CUSTOM_EFFECT_IMPLS

