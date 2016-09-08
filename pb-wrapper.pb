Prototype proto_version()
Prototype proto_auth(login.p-ascii,password.p-ascii,base_url.p-ascii,agent.p-ascii)
Prototype proto_query(access_id.p-ascii,secret_key.p-ascii,query.p-ascii,base_url.p-ascii,timezone.p-ascii,agent.p-ascii)
Prototype proto_comparedates(date1.p-ascii,date2.p-ascii)

Procedure mega_init(id.i,path.s)
  If OpenLibrary(id,path)
    Global _mega_version.proto_version = GetFunction(id,"mega_version")
    Global _mega_auth.proto_auth = GetFunction(id,"mega_auth")
    Global _mega_query.proto_query = GetFunction(id,"mega_query")
    Global _mega_comparedates.proto_comparedates = GetFunction(id,"mega_comparedates")
    ProcedureReturn #True
  EndIf
  ProcedureReturn #False
EndProcedure

Procedure.s mega_version()
  ProcedureReturn PeekS(_mega_version(),-1,#PB_Ascii)
EndProcedure

Procedure.s mega_auth(login.s,password.s,base_url.s,agent.s)
  ProcedureReturn PeekS(_mega_auth(login,password,base_url,agent),-1,#PB_Ascii)
EndProcedure

Procedure.s mega_query(access_id.s,secret_key.s,query.s,base_url.s,timezone.s,agent.s)
  ProcedureReturn PeekS(_mega_query(access_id,secret_key,query,base_url,timezone,agent),-1,#PB_Ascii)
EndProcedure

Procedure.s mega_comparedates(date1.s,date2.s)
  ProcedureReturn PeekS(_mega_comparedates(date1,date2),-1,#PB_Ascii)
EndProcedure
; IDE Options = PureBasic 5.42 LTS (MacOS X - x64)
; Folding = -
; EnableUnicode
; EnableXP