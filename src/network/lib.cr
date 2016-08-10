require "../config"
require "../system/lib"
@[Link("voidcsfml-network")]
lib VoidCSFML
  fun socket_finalize(self : Void*)
  fun socket_setblocking_GZq(self : Void*, blocking : Bool)
  fun socket_isblocking(self : Void*, result : Bool*)
  fun tcpsocket_initialize(self : Void*)
  fun tcpsocket_getlocalport(self : Void*, result : LibC::UShort*)
  fun tcpsocket_getremoteaddress(self : Void*, result : Void*)
  fun tcpsocket_getremoteport(self : Void*, result : LibC::UShort*)
  fun tcpsocket_connect_BfEbxif4T(self : Void*, remote_address : Void*, remote_port : LibC::UShort, timeout : Void*, result : LibC::Int*)
  fun tcpsocket_disconnect(self : Void*)
  fun tcpsocket_send_5h8vgv(self : Void*, data : UInt8*, size : LibC::SizeT, result : LibC::Int*)
  fun tcpsocket_send_5h8vgvi49(self : Void*, data : UInt8*, size : LibC::SizeT, sent : LibC::SizeT*, result : LibC::Int*)
  fun tcpsocket_receive_xALvgvi49(self : Void*, data : UInt8*, size : LibC::SizeT, received : LibC::SizeT*, result : LibC::Int*)
  fun tcpsocket_send_jyF(self : Void*, packet : Void*, result : LibC::Int*)
  fun tcpsocket_receive_jyF(self : Void*, packet : Void*, result : LibC::Int*)
  fun tcpsocket_setblocking_GZq(self : Void*, blocking : Bool)
  fun tcpsocket_isblocking(self : Void*, result : Bool*)
  fun ftp_initialize(self : Void*)
  fun ftp_response_initialize_nyWzkC(self : Void*, code : LibC::Int, message_size : LibC::SizeT, message : LibC::Char*)
  fun ftp_response_isok(self : Void*, result : Bool*)
  fun ftp_response_getstatus(self : Void*, result : LibC::Int*)
  fun ftp_response_getmessage(self : Void*, result : LibC::Char**)
  fun ftp_response_initialize_lXv(self : Void*, copy : Void*)
  fun ftp_directoryresponse_initialize_lXv(self : Void*, response : Void*)
  fun ftp_directoryresponse_getdirectory(self : Void*, result : LibC::Char**)
  fun ftp_directoryresponse_isok(self : Void*, result : Bool*)
  fun ftp_directoryresponse_getstatus(self : Void*, result : LibC::Int*)
  fun ftp_directoryresponse_getmessage(self : Void*, result : LibC::Char**)
  fun ftp_directoryresponse_initialize_Zyp(self : Void*, copy : Void*)
  fun ftp_listingresponse_initialize_lXvzkC(self : Void*, response : Void*, data_size : LibC::SizeT, data : LibC::Char*)
  fun ftp_listingresponse_getlisting(self : Void*, result : LibC::Char***, result_size : LibC::SizeT*)
  fun ftp_listingresponse_isok(self : Void*, result : Bool*)
  fun ftp_listingresponse_getstatus(self : Void*, result : LibC::Int*)
  fun ftp_listingresponse_getmessage(self : Void*, result : LibC::Char**)
  fun ftp_listingresponse_initialize_2ho(self : Void*, copy : Void*)
  fun ftp_finalize(self : Void*)
  fun ftp_connect_BfEbxif4T(self : Void*, server : Void*, port : LibC::UShort, timeout : Void*, result : Void*)
  fun ftp_disconnect(self : Void*, result : Void*)
  fun ftp_login(self : Void*, result : Void*)
  fun ftp_login_zkCzkC(self : Void*, name_size : LibC::SizeT, name : LibC::Char*, password_size : LibC::SizeT, password : LibC::Char*, result : Void*)
  fun ftp_keepalive(self : Void*, result : Void*)
  fun ftp_getworkingdirectory(self : Void*, result : Void*)
  fun ftp_getdirectorylisting_zkC(self : Void*, directory_size : LibC::SizeT, directory : LibC::Char*, result : Void*)
  fun ftp_changedirectory_zkC(self : Void*, directory_size : LibC::SizeT, directory : LibC::Char*, result : Void*)
  fun ftp_parentdirectory(self : Void*, result : Void*)
  fun ftp_createdirectory_zkC(self : Void*, name_size : LibC::SizeT, name : LibC::Char*, result : Void*)
  fun ftp_deletedirectory_zkC(self : Void*, name_size : LibC::SizeT, name : LibC::Char*, result : Void*)
  fun ftp_renamefile_zkCzkC(self : Void*, file_size : LibC::SizeT, file : LibC::Char*, new_name_size : LibC::SizeT, new_name : LibC::Char*, result : Void*)
  fun ftp_deletefile_zkC(self : Void*, name_size : LibC::SizeT, name : LibC::Char*, result : Void*)
  fun ftp_download_zkCzkCJP8(self : Void*, remote_file_size : LibC::SizeT, remote_file : LibC::Char*, local_path_size : LibC::SizeT, local_path : LibC::Char*, mode : LibC::Int, result : Void*)
  fun ftp_upload_zkCzkCJP8(self : Void*, local_file_size : LibC::SizeT, local_file : LibC::Char*, remote_path_size : LibC::SizeT, remote_path : LibC::Char*, mode : LibC::Int, result : Void*)
  fun ftp_sendcommand_zkCzkC(self : Void*, command_size : LibC::SizeT, command : LibC::Char*, parameter_size : LibC::SizeT, parameter : LibC::Char*, result : Void*)
  fun ipaddress_initialize(self : Void*)
  fun ipaddress_initialize_zkC(self : Void*, address_size : LibC::SizeT, address : LibC::Char*)
  fun ipaddress_initialize_Yy6(self : Void*, address : LibC::Char*)
  fun ipaddress_initialize_9yU9yU9yU9yU(self : Void*, byte0 : UInt8, byte1 : UInt8, byte2 : UInt8, byte3 : UInt8)
  fun ipaddress_initialize_saL(self : Void*, address : UInt32)
  fun ipaddress_tostring(self : Void*, result : LibC::Char**)
  fun ipaddress_tointeger(self : Void*, result : UInt32*)
  fun ipaddress_getlocaladdress(result : Void*)
  fun ipaddress_getpublicaddress_f4T(timeout : Void*, result : Void*)
  fun operator_eq_BfEBfE(left : Void*, right : Void*, result : Bool*)
  fun operator_ne_BfEBfE(left : Void*, right : Void*, result : Bool*)
  fun operator_lt_BfEBfE(left : Void*, right : Void*, result : Bool*)
  fun operator_gt_BfEBfE(left : Void*, right : Void*, result : Bool*)
  fun operator_le_BfEBfE(left : Void*, right : Void*, result : Bool*)
  fun operator_ge_BfEBfE(left : Void*, right : Void*, result : Bool*)
  fun ipaddress_initialize_BfE(self : Void*, copy : Void*)
  fun http_request_initialize_zkC1ctzkC(self : Void*, uri_size : LibC::SizeT, uri : LibC::Char*, method : LibC::Int, body_size : LibC::SizeT, body : LibC::Char*)
  fun http_request_setfield_zkCzkC(self : Void*, field_size : LibC::SizeT, field : LibC::Char*, value_size : LibC::SizeT, value : LibC::Char*)
  fun http_request_setmethod_1ct(self : Void*, method : LibC::Int)
  fun http_request_seturi_zkC(self : Void*, uri_size : LibC::SizeT, uri : LibC::Char*)
  fun http_request_sethttpversion_emSemS(self : Void*, major : LibC::UInt, minor : LibC::UInt)
  fun http_request_setbody_zkC(self : Void*, body_size : LibC::SizeT, body : LibC::Char*)
  fun http_request_initialize_Jat(self : Void*, copy : Void*)
  fun http_response_initialize(self : Void*)
  fun http_response_getfield_zkC(self : Void*, field_size : LibC::SizeT, field : LibC::Char*, result : LibC::Char**)
  fun http_response_getstatus(self : Void*, result : LibC::Int*)
  fun http_response_getmajorhttpversion(self : Void*, result : LibC::UInt*)
  fun http_response_getminorhttpversion(self : Void*, result : LibC::UInt*)
  fun http_response_getbody(self : Void*, result : LibC::Char**)
  fun http_response_initialize_N50(self : Void*, copy : Void*)
  fun http_initialize(self : Void*)
  fun http_initialize_zkCbxi(self : Void*, host_size : LibC::SizeT, host : LibC::Char*, port : LibC::UShort)
  fun http_sethost_zkCbxi(self : Void*, host_size : LibC::SizeT, host : LibC::Char*, port : LibC::UShort)
  fun http_sendrequest_Jatf4T(self : Void*, request : Void*, timeout : Void*, result : Void*)
  fun packet_initialize(self : Void*)
  fun packet_finalize(self : Void*)
  fun packet_append_5h8vgv(self : Void*, data : UInt8*, size_in_bytes : LibC::SizeT)
  fun packet_clear(self : Void*)
  fun packet_getdata(self : Void*, result : UInt8**)
  fun packet_getdatasize(self : Void*, result : LibC::SizeT*)
  fun packet_endofpacket(self : Void*, result : Bool*)
  fun packet_operator_bool(self : Void*, result : Bool*)
  fun packet_operator_shr_gRY(self : Void*, data : Bool*)
  fun packet_operator_shr_y9(self : Void*, data : Int8*)
  fun packet_operator_shr_8hc(self : Void*, data : UInt8*)
  fun packet_operator_shr_4k3(self : Void*, data : Int16*)
  fun packet_operator_shr_Xag(self : Void*, data : UInt16*)
  fun packet_operator_shr_NiZ(self : Void*, data : Int32*)
  fun packet_operator_shr_qTz(self : Void*, data : UInt32*)
  fun packet_operator_shr_BuW(self : Void*, data : Int64*)
  fun packet_operator_shr_7H7(self : Void*, data : UInt64*)
  fun packet_operator_shr_ATF(self : Void*, data : LibC::Float*)
  fun packet_operator_shr_nIp(self : Void*, data : LibC::Double*)
  fun packet_operator_shr_GHF(self : Void*, data : LibC::Char**)
  fun packet_operator_shl_GZq(self : Void*, data : Bool)
  fun packet_operator_shl_k6g(self : Void*, data : Int8)
  fun packet_operator_shl_9yU(self : Void*, data : UInt8)
  fun packet_operator_shl_yAA(self : Void*, data : Int16)
  fun packet_operator_shl_BtU(self : Void*, data : UInt16)
  fun packet_operator_shl_qe2(self : Void*, data : Int32)
  fun packet_operator_shl_saL(self : Void*, data : UInt32)
  fun packet_operator_shl_G4x(self : Void*, data : Int64)
  fun packet_operator_shl_Jvt(self : Void*, data : UInt64)
  fun packet_operator_shl_Bw9(self : Void*, data : LibC::Float)
  fun packet_operator_shl_mYt(self : Void*, data : LibC::Double)
  fun packet_operator_shl_zkC(self : Void*, data_size : LibC::SizeT, data : LibC::Char*)
  fun packet_initialize_54U(self : Void*, copy : Void*)
  fun socketselector_initialize(self : Void*)
  fun socketselector_finalize(self : Void*)
  fun socketselector_add_JTp(self : Void*, socket : Void*)
  fun socketselector_remove_JTp(self : Void*, socket : Void*)
  fun socketselector_clear(self : Void*)
  fun socketselector_wait_f4T(self : Void*, timeout : Void*, result : Bool*)
  fun socketselector_isready_JTp(self : Void*, socket : Void*, result : Bool*)
  fun socketselector_initialize_fWq(self : Void*, copy : Void*)
  fun tcplistener_initialize(self : Void*)
  fun tcplistener_getlocalport(self : Void*, result : LibC::UShort*)
  fun tcplistener_listen_bxiBfE(self : Void*, port : LibC::UShort, address : Void*, result : LibC::Int*)
  fun tcplistener_close(self : Void*)
  fun tcplistener_accept_WsF(self : Void*, socket : Void*, result : LibC::Int*)
  fun tcplistener_setblocking_GZq(self : Void*, blocking : Bool)
  fun tcplistener_isblocking(self : Void*, result : Bool*)
  fun udpsocket_initialize(self : Void*)
  fun udpsocket_getlocalport(self : Void*, result : LibC::UShort*)
  fun udpsocket_bind_bxiBfE(self : Void*, port : LibC::UShort, address : Void*, result : LibC::Int*)
  fun udpsocket_unbind(self : Void*)
  fun udpsocket_send_5h8vgvBfEbxi(self : Void*, data : UInt8*, size : LibC::SizeT, remote_address : Void*, remote_port : LibC::UShort, result : LibC::Int*)
  fun udpsocket_receive_xALvgvi499ylYII(self : Void*, data : UInt8*, size : LibC::SizeT, received : LibC::SizeT*, remote_address : Void*, remote_port : LibC::UShort*, result : LibC::Int*)
  fun udpsocket_send_jyFBfEbxi(self : Void*, packet : Void*, remote_address : Void*, remote_port : LibC::UShort, result : LibC::Int*)
  fun udpsocket_receive_jyF9ylYII(self : Void*, packet : Void*, remote_address : Void*, remote_port : LibC::UShort*, result : LibC::Int*)
  fun udpsocket_setblocking_GZq(self : Void*, blocking : Bool)
  fun udpsocket_isblocking(self : Void*, result : Bool*)
  fun sfml_network_version(LibC::Int*, LibC::Int*, LibC::Int*)
end
