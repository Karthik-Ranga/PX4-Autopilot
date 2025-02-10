include (${CMAKE_CURRENT_LIST_DIR}/uavcan_board_identity)

px4_add_board(
	PLATFORM nuttx
	VENDOR agamrobotics
	MODEL can-gps-v1
	LABEL debug
	TOOLCHAIN arm-none-eabi
	ARCHITECTURE cortex-m4
	CONSTRAINED_MEMORY
	ROMFSROOT cannode
	UAVCAN_INTERFACES 1
	DRIVERS
		barometer/bmp388
		bootloaders
		gps
		magnetometer/bosch/bmm150
		imu/invensense/icm42688p
		tone_alarm
		safety_button
		uavcannode
	MODULES
		#ekf2
		#load_mon
		#sensors
	SYSTEMCMDS
		i2cdetect
		led_control
		param
		perf
		reboot
		top
		topic_listener
		tune_control
		uorb
		ver
		work_queue
)
