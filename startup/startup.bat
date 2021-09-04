#!/bin/bash
filevpn=$VPN/duc.tran4.ovpn
sql=sqldeveloper
chrome=chrome
screenshot=screenshotun

if_exist(){
	pgrep -f $1 > /dev/null
}

#call function if_exist with agrument 1
if_exist chrome
if_exist sqldeveloper

run_process(){

echo $1 

#echo ${1//[][]/} # replace [] on agrument
#echo ["ps -aux | grep $1 | awk '{print $2}'"] > /dev/null
#pidof -x sqldeveloper > /dev/null
#echo $? return kết quả của command cuối cùng
#ps -aux | grep $1 | awk '{print $2}'
#echo "ps -aux | grep $1 | awk '{print \$2}'"

	
	if_exist $1 && echo "Process $1 already running" || (nohup $1 &)
	
	
#	if pgrep $1 >/dev/null; then
#	    	echo "Process $1 already running"
#	else 
# [[ ! -z "$2" ]] && nohup $2 & check tham số 2 truyền vào có khác null ko, && nếu câu lệnh trước thành công thì thực hiện câu lệnh sau
# nohup chạy background ở dưới , cuối line phải có & 
#		[[ ! -z "$2" ]] && nohup $2 || echo "ko có tham số 2"&
#		echo $2
#	fi

}

run_process sqldeveloper 
run_process google-chrome
run_process smartgit.sh
run_process intellij-idea-ultimate
run_process postman

#


#sudo kill $(ps -aux | grep [o]penvpn3-service-config | awk '{print #$2}');openvpn3 config-import -c '$filevpn' && openvpn3 configs-list && #openvpn3 session-start -#c '$filevpn'


#echo open terminal tab sqldeveloper

#gnome-terminal --tab-with-profile=hold -t 'sqldeveloper' -e 'sqldeveloper'

#echo open terminal tab openvpn

#gnome-terminal --tab-with-profile=hold -t 'openvpn' -e 'sh -c "sudo kill '$(ps -aux | grep [o]penvpn3-service-config | awk '{print $2}')' ; openvpn3 config-import -c '$filevpn' && openvpn3 configs-list && openvpn3 session-start -c '$filevpn'"' 

#if if_exist openvpn3-service-config; then
#	sudo kill -9 $(pgrep -f openvpn3-service-config);
#else
#	openvpn3 config-import -c $filevpn
#fi

# && thực thi được sẽ chạy câu lệnh tiếp theo, ko thực thi được ko chạy tất cả
# || không quan tâm câu lệnh trước có thực thi được không, sẽ thực thi.
#if_exist openvpn3-service-config && echo "delete1" && sudo kill -9 $(pgrep -f openvpn3-service-config) && echo "delete2" && openvpn3 config-import -c $filevpn && echo "import1" || openvpn3 config-import -c $filevpn && echo "import2"

#đọc dòng đầu tiên của file và lấy value
#lấy value từ file, hoặc truyền param từ ngoài vào
# => param có giá trị là chuỗi String 
#không thể lấy đường dẫn tương đối v.v
#param=$(head -n 1 ./$1)
#echo $param
#cannot open for read: $VPN/duc.tran4.ovpn
#openvpn3 config-import -c $filevpn
#nohup openvpn3 config-import -c $filevpn

im_cf(){
	if_exist openvpn3-service-config && echo "cf already im" || (openvpn3 config-import -c $filevpn && echo "imported" && openvpn3 session-start -c $filevpn)
}
im_cf 


