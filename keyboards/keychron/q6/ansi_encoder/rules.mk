# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = yes      # Enable Bootmagic Lite
MOUSEKEY_ENABLE = yes       # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
NKRO_ENABLE = yes           # Enable USB N-key Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no        # Enable keyboard RGB underglow
AUDIO_ENABLE = no           # Audio output
ENCODER_ENABLE = yes        # Enable Encoder
DIP_SWITCH_ENABLE = yes
RGB_MATRIX_ENABLE = yes
<<<<<<< HEAD
=======
RGB_MATRIX_DRIVER = CKLED2001
RGB_MATRIX_CUSTOM_USER = yes
<<<<<<< HEAD
>>>>>>> 6d0a5d7b69 (broken?)
=======
DYNAMIC_MACRO_ENABLE = yes
MOUSEKEY_ENABLE = yes
>>>>>>> 4419f8344e (VIA Off, DIABLO Layer)
LTO_ENABLE = yes
EEPROM_DRIVER = wear_leveling
WEAR_LEVELING_DRIVER = embedded_flash
TAP_DANCE_ENABLE = no
CUSTOM_TAP_DANCE = no
# Enter lower-power sleep mode when on the ChibiOS idle thread
OPT_DEFS += -DCORTEX_ENABLE_WFI_IDLE=TRUE

# custom matrix setup
CUSTOM_MATRIX = lite

SRC += matrix.c
