webtalk_init -webtalk_dir /home/jrmerkel/Documents/School/581/proj/rsd/Processor/Project/VivadoSim/work/xsim.dir/work.TestMain/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Wed Dec  8 22:33:16 2021" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2020.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2902540" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "f65aeefb-540c-4f46-9145-8d65fae3909f" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "e63fa69c-ba79-4c2f-94e5-e8a123a249ab" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "6" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 20.04.3 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "AMD Ryzen 5 3600 6-Core Processor" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2200.000 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "2" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key runall -value "true" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key runtime -value "274142 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "9.16_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "190988_KB" -context "xsim\\usage"
webtalk_transmit -clientid 2451963509 -regid "" -xml /home/jrmerkel/Documents/School/581/proj/rsd/Processor/Project/VivadoSim/work/xsim.dir/work.TestMain/webtalk/usage_statistics_ext_xsim.xml -html /home/jrmerkel/Documents/School/581/proj/rsd/Processor/Project/VivadoSim/work/xsim.dir/work.TestMain/webtalk/usage_statistics_ext_xsim.html -wdm /home/jrmerkel/Documents/School/581/proj/rsd/Processor/Project/VivadoSim/work/xsim.dir/work.TestMain/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
