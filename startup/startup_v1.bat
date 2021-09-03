#!/bin/bash
sql=sqldeveloper
chrome=chrome
screenshot=screenshotun

is_process_existed(){
	pgrep $1 > /dev/null
}

#call function is_process_existed with agrument 1
is_process_existed chrome
is_process_existed sqldeveloper

run_process_if_not_existed(){

echo $1 

#echo ${1//[][]/} # replace [] on agrument
#echo ["ps -aux | grep $1 | awk '{print $2}'"] > /dev/null
#pidof -x sqldeveloper > /dev/null
#echo $? return kết quả của command cuối cùng
#ps -aux | grep $1 | awk '{print $2}'
#echo "ps -aux | grep $1 | awk '{print \$2}'"

	
	is_process_existed $1 && echo "Process $1 already running" || ( [[ ! -z "$2" ]] && nohup $2 || echo "ko có tham số 2"& )
	
	
#	if pgrep $1 >/dev/null; then
#	    	echo "Process $1 already running"
#	else 
# [[ ! -z "$2" ]] && nohup $2 & check tham số 2 truyền vào có khác null ko, && nếu câu lệnh trước thành công thì thực hiện câu lệnh sau
# nohup chạy background ở dưới , cuối line phải có & 
#		[[ ! -z "$2" ]] && nohup $2 || echo "ko có tham số 2"&
#		echo $2
#	fi

}

run_process_if_not_existed $sql sqldeveloper 
run_process_if_not_existed $chrome google-chrome
run_process_if_not_existed $screenshot

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


#sudo kill $(ps -aux | grep [o]penvpn3-service-config | awk '{print $2}');openvpn3 config-import -c '$filevpn' && openvpn3 configs-list && openvpn3 session-start -#c '$filevpn'


#echo open terminal tab sqldeveloper

#gnome-terminal --tab-with-profile=hold -t 'sqldeveloper' -e 'sqldeveloper'

#echo open terminal tab openvpn

#gnome-terminal --tab-with-profile=hold -t 'openvpn' -e 'sh -c "sudo kill '$(ps -aux | grep [o]penvpn3-service-config | awk '{print $2}')' ; openvpn3 config-import -c '$filevpn' && openvpn3 configs-list && openvpn3 session-start -c '$filevpn'"' 

#echo excute openvpn done
