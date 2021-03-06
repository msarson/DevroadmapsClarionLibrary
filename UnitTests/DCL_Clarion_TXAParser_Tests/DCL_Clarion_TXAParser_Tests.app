hl职!YLI悍槟񷈭�5鞌H趩@ㄝ鱺籍  瑇���瓸勵9D�@�         e���!       `璌 .     '> */           +       %AfterGlobalIncludes     +*    )  Include('DCL_Clarion_TXAParser.inc'),Once
Include('DCL_System_Diagnostics_Logger.inc'),ONCE
gdbg                                    DCL_System_Diagnostics_Logger,external,dll

include('DCL_System_StringUtility.inc'),once
StringUtility                           DCL_System_StringUtility


 �  /   7                                                                                                              �  6颤妈isN忷/'gbZi         桛��!       靲{ .     '> */           +       %ProcessedCode     +*    {   	txa.Parse('embeds.txa')
	AssertThat(txa.Errors.Count(),IsEqualTo(0),'Error parsing TXA: ' & txa.Errors.GetLastError())
 �  1   3        +       %LocalDataAfterClasses     +*    @   txa                                     DCL_Clarion_TXAParser
 �  ,   -                                                                                                                                                               j   �1絝Xk)D�&r擡��         蛀��!       竦K .     =�; */                  %Parameters %                          (*long addr)       %ProcedureParameters                                 %ProcedureParameterName %                   %ProcedureParameters                           addr       %ProcedureParameterOrigName %                   %ProcedureParameters                           addr       %ProcedureParameterType %                   %ProcedureParameters                           long       %ProcedureParameterDefault %                   %ProcedureParameters                                     %ProcedureParameterOmitted                    %ProcedureParameters                                %ProcedureParameterByReference                    %ProcedureParameters                               %ProcedureParameterConstant                    %ProcedureParameters                                %GenerateOpenClose                                %GenerateSaveRestore                                                                                                                                                                                                                                                �  �*罁趇稡囥�!ズ靆         侢��!       K .     '> */           +       %ProcessedCode     +*       
 2              +*    q   	txa.Parse('embeds.txa')
	AssertThat(txa.GetEmbedCount(),IsEqualTo(6),'Wrong number of embeds found in TXA')
	 �             +       %LocalDataAfterClasses     +*    @   txa                                     DCL_Clarion_TXAParser
 �                                                                                                                                               �  晐{+>bD汘墆Pua�         ����!       /梴 .     /梴 .                              ��       Dummy        Window                                                                                                                                                       f   渄�w鹍J夛�.~負         狚��!       i, .     '> */            +  -- NAMESPACE DCL_Clarion_TXAParser_Tests
#system win32 dll
#model clarion dll
#pragma define(_ABCDllMode_=>0) -- GENERATED
#pragma define(_ABCLinkMode_=>1) -- GENERATED
#compile "DCL_Clarion_TXAParser_Tests.clw" -- GENERATED
#compile "DCL_Clarion_TXAParser_Tests001.clw" -- GENERATED
#compile "DCL_Clarion_TXAParser_Tests_BC0.CLW" -- GENERATED
#compile "DCL_CLARION_TXAPARSER_TESTS_BC.CLW" -- GENERATED
#pragma link("C%V%asc%X%%L%.lib") -- GENERATED
#pragma link("DevRoadmapsClarion.lib") -- GENERATED
#link "DCL_Clarion_TXAParser_Tests.DLL"
                                                                                                                                                                  j   BTmHyI�9ヌ�l         蛀��!       ,梴 .     =�; */                  %Parameters %                          (*long addr)       %ProcedureParameters                                 %ProcedureParameterName %                   %ProcedureParameters                           addr       %ProcedureParameterOrigName %                   %ProcedureParameters                           addr       %ProcedureParameterType %                   %ProcedureParameters                           long       %ProcedureParameterDefault %                   %ProcedureParameters                                     %ProcedureParameterOmitted                    %ProcedureParameters                                %ProcedureParameterByReference                    %ProcedureParameters                               %ProcedureParameterConstant                    %ProcedureParameters                                %GenerateOpenClose                                %GenerateSaveRestore                                                                                                                                                                                                                                                p   闶痈艭巨苄��         Z���!       i, .     �0@ */                                                               ABC$ABC         s . 鰞       '> */      瑇���瓸勵9D�@�                                                                                             �  X�-茳钃F寊�*莅錀         ����!       鑰{ .     鑰{ .                                                                                                                                                                                                                            r   rYBNW9kD�z�5� �         ���!       #梴 .     '> */                  ParseTXA_VerifyEmbedData 坊藏m@筂夹       (*long addr),long,pascal 晐{+>bD汘墆Pua�      6          Test procedures                        ClarionTest$TestProcedure        Test procedures s . 佂8       '> */           ClarionTest$TestSupport    ����                      %AddressVar %                          addr    
   %TestCode %                                 BTmHyI�9ヌ�l垙p#nF蜠�#�&鳆l� 幊热殯A暢鉪>槄         �  垙p#nF蜠�#�&鳆l� �      �  x@��!       (梴 .     '> */           +       %ProcessedCode     +*    �  	txa.Parse('embeds.txa')
	txa.GetRawEmbedData(DataQ,dataq.Text)
	! Uncomment the following code to generate the dataq test code
!	gdbg.write('************** begin dump *******************')
!	loop x = 1 to records(dataq)
!		get(dataq,x)
!		if clip(dataq.Text) <> ''
!			gdbg.write('get(dataq,' & x & ')')
!			gdbg.write('StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)')
!			gdbg.write('AssertThat(dataq.Text,IsEqualto(''' & quote(dataq.Text) & '''),''Comparison error on line ' & x & ''')')
!		END
!	END
!	gdbg.write('************** end dump *******************')
	
	get(dataq,1)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('Global {34}'),'Comparison error on line 1')
	get(dataq,2)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('%AfterGlobalIncludes 4000'),'Comparison error on line 2')
	get(dataq,3)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('!INCLUDE(~CharFileIO.Inc~), ONCE'),'Comparison error on line 3')
	get(dataq,4)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('ImportTXAs {30}'),'Comparison error on line 4')
	get(dataq,5)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('%WindowManagerMethodCodeSection Init (),BYTE 9500'),'Comparison error on line 5')
	get(dataq,6)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' DIRECTORY(txaq,~*.TXA~,ff_:NORMAL)   !Get all files and directories'),'Comparison error on line 6')
	get(dataq,7)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('%DataSection Init 1300'),'Comparison error on line 7')
	get(dataq,8)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('txaq QUEUE(File:queue),pre()        !Inherit exact declaration of File:queue'),'Comparison error on line 8')
	get(dataq,9)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('         END'),'Comparison error on line 9')
	get(dataq,10)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('state         LONG(0)'),'Comparison error on line 10')
	get(dataq,11)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('LineNo         long'),'Comparison error on line 11')
	get(dataq,13)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('%ControlEventHandling ?import Accepted 5000'),'Comparison error on line 13')
	get(dataq,14)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}! Import the TXAs'),'Comparison error on line 14')
	get(dataq,15)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}?progressvar{{prop:rangehigh} = records(txaq)'),'Comparison error on line 15')
	get(dataq,16)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}setcursor(cursor:wait)'),'Comparison error on line 16')
	get(dataq,17)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}Embed{{prop:sql} = ~delete from Embed~'),'Comparison error on line 17')
	get(dataq,18)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}Embed{{prop:sql} = ~delete from EmbedProc~'),'Comparison error on line 18')
	get(dataq,19)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}Embed{{prop:sql} = ~delete from EmbedApp~'),'Comparison error on line 19')
	get(dataq,20)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}loop x = 1 to records(txaq)'),'Comparison error on line 20')
	get(dataq,21)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}get(txaq,x)'),'Comparison error on line 21')
	get(dataq,22)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}?progressVar{{prop:progress} = x-1'),'Comparison error on line 22')
	get(dataq,23)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~*{67}~)'),'Comparison error on line 23')
	get(dataq,24)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~*{67}~)'),'Comparison error on line 24')
	get(dataq,25)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~*{67}~)'),'Comparison error on line 25')
	get(dataq,26)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!Db.out(~TXA: ~ & txaq.name)'),'Comparison error on line 26')
	get(dataq,27)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~*{67}~)'),'Comparison error on line 27')
	get(dataq,28)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~*{67}~)'),'Comparison error on line 28')
	get(dataq,29)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~*{67}~)'),'Comparison error on line 29')
	get(dataq,30)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}clear(ema:record)'),'Comparison error on line 30')
	get(dataq,31)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!Access:EmbedApp.PrimeRecord()'),'Comparison error on line 31')
	get(dataq,32)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}EMA:TXA = txaq.name'),'Comparison error on line 32')
	get(dataq,33)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~set ema:txa to ~ & ema:txa)'),'Comparison error on line 33')
	get(dataq,34)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}Access:EmbedApp.Insert()'),'Comparison error on line 34')
	get(dataq,35)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}EmbedApp{{prop:sql} = ~select last_insert_id()~'),'Comparison error on line 35')
	get(dataq,36)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}next(EmbedApp)'),'Comparison error on line 36')
	get(dataq,37)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}!db.out(~EMA:EmbedAppID: ~ & EMA:EmbedAppID)'),'Comparison error on line 37')
	get(dataq,40)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}! Add the queue header record'),'Comparison error on line 40')
	get(dataq,41)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}access:TextFile.Close()'),'Comparison error on line 41')
	get(dataq,42)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}GLO:TextFileName = txaq.name'),'Comparison error on line 42')
	get(dataq,43)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}access:TextFile.Open()'),'Comparison error on line 43')
	get(dataq,44)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}Access:TextFile.UseFile()'),'Comparison error on line 44')
	get(dataq,45)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}set(TextFile)'),'Comparison error on line 45')
	get(dataq,46)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}ProcName = ~~'),'Comparison error on line 46')
	get(dataq,48)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}state = 0'),'Comparison error on line 48')
	get(dataq,49)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}lineNo = 0'),'Comparison error on line 49')
	get(dataq,50)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}clear(procname)'),'Comparison error on line 50')
	get(dataq,51)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}clear(lastprocname)'),'Comparison error on line 51')
	get(dataq,52)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}clear(lastembedname)'),'Comparison error on line 52')
	get(dataq,53)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}clear(currembedname)'),'Comparison error on line 53')
	get(dataq,54)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}LOOP'),'Comparison error on line 54')
	get(dataq,55)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}next(TextFile)'),'Comparison error on line 55')
	get(dataq,56)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}if errorcode() then break.'),'Comparison error on line 56')
	get(dataq,57)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}dumptrace = false'),'Comparison error on line 57')
	get(dataq,58)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}lineNo += 1'),'Comparison error on line 58')
	get(dataq,60)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}if dumptrace'),'Comparison error on line 60')
	get(dataq,61)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}if sub(txt:rec,1,5) = ~[END]~'),'Comparison error on line 61')
	get(dataq,62)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = state - 1'),'Comparison error on line 62')
	get(dataq,63)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}elsif sub(txt:rec,1,1) = ~[~ and sub(txt:rec,1,6) <<> ~[DEFIN~'),'Comparison error on line 63')
	get(dataq,64)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = state + 1'),'Comparison error on line 64')
	get(dataq,65)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}end'),'Comparison error on line 65')
	get(dataq,66)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}if sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 66')
	get(dataq,67)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}!db.out(all(~ ~,state*2) & clip(txt:rec) & ~ *{40} ~)'),'Comparison error on line 67')
	get(dataq,68)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}else'),'Comparison error on line 68')
	get(dataq,69)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}!db.out(all(~ ~,state*2) & txt:rec)'),'Comparison error on line 69')
	get(dataq,70)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}end'),'Comparison error on line 70')
	get(dataq,72)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}else ! if not dumptrace'),'Comparison error on line 72')
	get(dataq,75)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}!db.out(~<<-- state ~ & state & ~ -- ~ & TXT:rec)'),'Comparison error on line 75')
	get(dataq,76)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}CASE state'),'Comparison error on line 76')
	get(dataq,77)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}OF 0 ! search for the start of a module or procedure, or an embed'),'Comparison error on line 77')
	get(dataq,78)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,11) = ~[PROCEDURE]~'),'Comparison error on line 78')
	get(dataq,79)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}! Clear procedure/embed names'),'Comparison error on line 79')
	get(dataq,80)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}clear(vars)'),'Comparison error on line 80')
	get(dataq,81)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 10'),'Comparison error on line 81')
	get(dataq,82)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,8) = ~[MODULE]~'),'Comparison error on line 82')
	get(dataq,83)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}! New module, so clear the vars and set the proc name to [module]'),'Comparison error on line 83')
	get(dataq,84)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}clear(vars)'),'Comparison error on line 84')
	get(dataq,85)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}procName = ~[MODULE]~'),'Comparison error on line 85')
	get(dataq,86)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,7) = ~EMBED %~'),'Comparison error on line 86')
	get(dataq,87)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}embedName = sub(txt:rec,7,len(txt:rec))'),'Comparison error on line 87')
	get(dataq,88)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 30'),'Comparison error on line 88')
	get(dataq,89)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 89')
	get(dataq,90)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~MISSED EMBED at line ~ & lineNo & ~ - ~ & txt:rec)'),'Comparison error on line 90')
	get(dataq,91)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 50'),'Comparison error on line 91')
	get(dataq,93)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 93')
	get(dataq,94)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}OF 10 ! get procedure name details'),'Comparison error on line 94')
	get(dataq,95)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,4) = ~NAME~'),'Comparison error on line 95')
	get(dataq,96)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}procName = sub(txt:rec,6,len(txt:rec))'),'Comparison error on line 96')
	get(dataq,97)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~found procedure named: ~ & procname)'),'Comparison error on line 97')
	get(dataq,98)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 11'),'Comparison error on line 98')
	get(dataq,99)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 99')
	get(dataq,100)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 100')
	get(dataq,101)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}OF 11'),'Comparison error on line 101')
	get(dataq,102)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,8) = ~FROM ABC~'),'Comparison error on line 102')
	get(dataq,103)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}procFromABC = sub(txt:rec,10,len(txt:rec))'),'Comparison error on line 103')
	get(dataq,104)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~found procedure template: ~ & procFromABC)'),'Comparison error on line 104')
	get(dataq,105)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 12'),'Comparison error on line 105')
	get(dataq,106)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 106')
	get(dataq,107)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 107')
	get(dataq,108)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}OF 12'),'Comparison error on line 108')
	get(dataq,109)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,8) = ~CATEGORY~'),'Comparison error on line 109')
	get(dataq,110)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}procCategory = sub(txt:rec,11,len(clip(txt:rec))-11)'),'Comparison error on line 110')
	get(dataq,111)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~found procedure type: ~ & procCategory)'),'Comparison error on line 111')
	get(dataq,112)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 112')
	get(dataq,113)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}! Category is optional but if there will always follow FROM ABC'),'Comparison error on line 113')
	get(dataq,114)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}! - go automatically back to state 0'),'Comparison error on line 114')
	get(dataq,115)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = 0'),'Comparison error on line 115')
	get(dataq,116)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 116')
	get(dataq,118)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 30 ! Look for a first embed parameter'),'Comparison error on line 118')
	get(dataq,119)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,11) = ~[INSTANCES]~'),'Comparison error on line 119')
	get(dataq,120)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 41'),'Comparison error on line 120')
	get(dataq,121)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 121')
	get(dataq,122)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 50'),'Comparison error on line 122')
	get(dataq,123)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~start of embed~)'),'Comparison error on line 123')
	get(dataq,124)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 124')
	get(dataq,126)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 41 ! Get first parameter'),'Comparison error on line 126')
	get(dataq,127)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,6) = ~WHEN ~~~'),'Comparison error on line 127')
	get(dataq,128)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}embedParam1 = sub(txt:rec,7,len(clip(txt:rec))-7)'),'Comparison error on line 128')
	get(dataq,129)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}WhenLevel = 1'),'Comparison error on line 129')
	get(dataq,130)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~whenlevel=~ & whenlevel)'),'Comparison error on line 130')
	get(dataq,131)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 131')
	get(dataq,132)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = 42'),'Comparison error on line 132')
	get(dataq,133)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 133')
	get(dataq,135)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 42 ! Look for a second embed parameter'),'Comparison error on line 135')
	get(dataq,136)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,11) = ~[INSTANCES]~'),'Comparison error on line 136')
	get(dataq,137)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 43'),'Comparison error on line 137')
	get(dataq,138)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 138')
	get(dataq,139)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 50'),'Comparison error on line 139')
	get(dataq,140)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~found PRIORITY~)'),'Comparison error on line 140')
	get(dataq,141)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 141')
	get(dataq,143)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 43 ! Get second parameter'),'Comparison error on line 143')
	get(dataq,144)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,6) = ~WHEN ~~~'),'Comparison error on line 144')
	get(dataq,145)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}embedParam2 = sub(txt:rec,7,len(clip(txt:rec))-7)'),'Comparison error on line 145')
	get(dataq,146)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}WhenLevel = 2'),'Comparison error on line 146')
	get(dataq,147)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~whenlevel=~ & whenlevel)'),'Comparison error on line 147')
	get(dataq,148)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 148')
	get(dataq,149)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = 44'),'Comparison error on line 149')
	get(dataq,150)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 150')
	get(dataq,152)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 44 ! Look for a third embed parameter'),'Comparison error on line 152')
	get(dataq,153)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,11) = ~[INSTANCES]~'),'Comparison error on line 153')
	get(dataq,154)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 45'),'Comparison error on line 154')
	get(dataq,155)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 155')
	get(dataq,156)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 50'),'Comparison error on line 156')
	get(dataq,157)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~found PRIORITY~)'),'Comparison error on line 157')
	get(dataq,158)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 158')
	get(dataq,160)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 45 ! Get third parameter'),'Comparison error on line 160')
	get(dataq,161)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,6) = ~WHEN ~~~'),'Comparison error on line 161')
	get(dataq,162)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}embedParam3 = sub(txt:rec,7,len(clip(txt:rec))-7)'),'Comparison error on line 162')
	get(dataq,163)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}WhenLevel = 3'),'Comparison error on line 163')
	get(dataq,164)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!db.out(~whenlevel=~ & whenlevel)'),'Comparison error on line 164')
	get(dataq,165)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 165')
	get(dataq,166)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = 50'),'Comparison error on line 166')
	get(dataq,167)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 167')
	get(dataq,170)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 50  ! look for the priority'),'Comparison error on line 170')
	get(dataq,171)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,8) = ~PRIORITY~'),'Comparison error on line 171')
	get(dataq,172)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}embedPriority = sub(txt:rec,10,len(txt:rec))'),'Comparison error on line 172')
	get(dataq,173)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~ ~)'),'Comparison error on line 173')
	get(dataq,174)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~*{97}~)'),'Comparison error on line 174')
	get(dataq,175)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** procName     : ~ & procName)'),'Comparison error on line 175')
	get(dataq,176)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** procFromABC  : ~ & procFromABC)'),'Comparison error on line 176')
	get(dataq,177)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** procCategory : ~ & procCategory)'),'Comparison error on line 177')
	get(dataq,178)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** embedName    : ~ & embedName)'),'Comparison error on line 178')
	get(dataq,179)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** embedParam1  : ~ & embedParam1)'),'Comparison error on line 179')
	get(dataq,180)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** embedParam2  : ~ & embedParam2)'),'Comparison error on line 180')
	get(dataq,181)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** embedParam3  : ~ & embedParam3)'),'Comparison error on line 181')
	get(dataq,182)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** embedPriority: ~ & embedPriority)'),'Comparison error on line 182')
	get(dataq,183)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~*{97}~)'),'Comparison error on line 183')
	get(dataq,184)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}!dgh'),'Comparison error on line 184')
	get(dataq,185)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}if lastprocname <<> procname'),'Comparison error on line 185')
	get(dataq,186)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}! insert new EmbedProc record'),'Comparison error on line 186')
	get(dataq,187)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}clear(EMP:record)'),'Comparison error on line 187')
	get(dataq,188)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMP:Proc = procname'),'Comparison error on line 188')
	get(dataq,189)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMP:ProcFromABC = ProcFromABC'),'Comparison error on line 189')
	get(dataq,190)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMP:ProcCategory = ProcCategory'),'Comparison error on line 190')
	get(dataq,191)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMP:EmbedAppID = EMA:EmbedAppID'),'Comparison error on line 191')
	get(dataq,192)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}Access:EmbedProc.Insert()'),'Comparison error on line 192')
	get(dataq,193)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EmbedProc{{prop:sql} = ~select last_insert_id()~'),'Comparison error on line 193')
	get(dataq,194)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}next(EmbedProc)'),'Comparison error on line 194')
	get(dataq,196)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}lastprocname = procname'),'Comparison error on line 196')
	get(dataq,197)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}end'),'Comparison error on line 197')
	get(dataq,198)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}! Add the embed record'),'Comparison error on line 198')
	get(dataq,199)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}currEmbedName = clip(embedName) & clip(embedparam1) & clip(embedparam2) & clip(embedparam3) & embedpriority'),'Comparison error on line 199')
	get(dataq,200)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}if currEmbedName <<> lastEmbedName'),'Comparison error on line 200')
	get(dataq,201)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}lastEmbedName = currEmbedName'),'Comparison error on line 201')
	get(dataq,202)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMB:EmbedProcID = EMP:EmbedProcID'),'Comparison error on line 202')
	get(dataq,203)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMB:Embed = EmbedName'),'Comparison error on line 203')
	get(dataq,204)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMB:Param1 = EmbedParam1'),'Comparison error on line 204')
	get(dataq,205)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMB:Param2 = EmbedParam2'),'Comparison error on line 205')
	get(dataq,206)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMB:Param3 = EmbedParam3'),'Comparison error on line 206')
	get(dataq,207)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}EMB:Priority = embedpriority'),'Comparison error on line 207')
	get(dataq,208)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}access:Embed.Insert()'),'Comparison error on line 208')
	get(dataq,209)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}!db.out(~proc: ~ & clip(procname) & ~, fromABC: ~ & clip(procFromABC) & ~, Category: ~ |'),'Comparison error on line 209')
	get(dataq,210)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}!  & clip(procCategory) & ~, embed: ~ & clip(embedname) & |'),'Comparison error on line 210')
	get(dataq,211)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}!  choose(embedParam1 <<> ~~,clip(embedParam1) & ~,~,~~) & |'),'Comparison error on line 211')
	get(dataq,212)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}!  choose(embedParam2 <<> ~~,clip(embedParam2) & ~,~,~~) & |'),'Comparison error on line 212')
	get(dataq,213)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}!  choose(embedParam3 <<> ~~,clip(embedParam3) & ~,~,~~) & |'),'Comparison error on line 213')
	get(dataq,214)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}!  ~, priority: ~ & embedPriority)'),'Comparison error on line 214')
	get(dataq,215)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}end'),'Comparison error on line 215')
	get(dataq,217)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}state = 51'),'Comparison error on line 217')
	get(dataq,219)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 219')
	get(dataq,221)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}of 51'),'Comparison error on line 221')
	get(dataq,222)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}state = 60'),'Comparison error on line 222')
	get(dataq,223)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 223')
	get(dataq,225)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}OF 60  ! capturing embed'),'Comparison error on line 225')
	get(dataq,226)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}! Quit when [END] encountered'),'Comparison error on line 226')
	get(dataq,227)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}if sub(txt:rec,1,1) = ~[~'),'Comparison error on line 227')
	get(dataq,228)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}if sub(txt:rec,1,5) = ~[END]~'),'Comparison error on line 228')
	get(dataq,229)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}case WhenLevel'),'Comparison error on line 229')
	get(dataq,230)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}of 3'),'Comparison error on line 230')
	get(dataq,231)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {72}WhenLevel = 2'),'Comparison error on line 231')
	get(dataq,232)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {72}embedParam3 = ~~'),'Comparison error on line 232')
	get(dataq,233)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}of 2'),'Comparison error on line 233')
	get(dataq,234)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {72}WhenLevel = 1'),'Comparison error on line 234')
	get(dataq,235)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {72}embedParam2 = ~~'),'Comparison error on line 235')
	get(dataq,236)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}of 1'),'Comparison error on line 236')
	get(dataq,237)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {72}WhenLevel = 0'),'Comparison error on line 237')
	get(dataq,238)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {72}embedParam1 = ~~'),'Comparison error on line 238')
	get(dataq,239)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}end'),'Comparison error on line 239')
	get(dataq,240)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}state = 0'),'Comparison error on line 240')
	get(dataq,242)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}elsif sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 242')
	get(dataq,243)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}! look for another embed under this [EMBED] point'),'Comparison error on line 243')
	get(dataq,244)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}state = 50'),'Comparison error on line 244')
	get(dataq,245)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}else'),'Comparison error on line 245')
	get(dataq,246)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}! could be we~re done'),'Comparison error on line 246')
	get(dataq,247)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}state = 0'),'Comparison error on line 247')
	get(dataq,248)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}end'),'Comparison error on line 248')
	get(dataq,249)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~*{97}~)'),'Comparison error on line 249')
	get(dataq,250)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}elsif sub(txt:rec,1,6) = ~WHEN ~~~'),'Comparison error on line 250')
	get(dataq,251)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}case WhenLevel'),'Comparison error on line 251')
	get(dataq,252)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}of 0'),'Comparison error on line 252')
	get(dataq,253)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}! get the first param'),'Comparison error on line 253')
	get(dataq,254)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}embedParam1 = sub(txt:rec,7,len(clip(txt:rec))-7)'),'Comparison error on line 254')
	get(dataq,255)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}WhenLevel = 1'),'Comparison error on line 255')
	get(dataq,256)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}state = 42'),'Comparison error on line 256')
	get(dataq,257)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}of 1'),'Comparison error on line 257')
	get(dataq,258)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}! get the second param'),'Comparison error on line 258')
	get(dataq,259)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}embedParam2 = sub(txt:rec,7,len(clip(txt:rec))-7)'),'Comparison error on line 259')
	get(dataq,260)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}WhenLevel = 2'),'Comparison error on line 260')
	get(dataq,261)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}state = 50'),'Comparison error on line 261')
	get(dataq,262)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}of 2'),'Comparison error on line 262')
	get(dataq,263)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {64}state = 50'),'Comparison error on line 263')
	get(dataq,264)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}end'),'Comparison error on line 264')
	get(dataq,265)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~*{97}~)'),'Comparison error on line 265')
	get(dataq,267)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}else'),'Comparison error on line 267')
	get(dataq,268)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {56}! write embed buffer to file'),'Comparison error on line 268')
	get(dataq,269)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('! {18}db.out(~** text        : ~ & txt:rec)'),'Comparison error on line 269')
	get(dataq,270)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}end'),'Comparison error on line 270')
	get(dataq,271)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}else'),'Comparison error on line 271')
	get(dataq,272)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}!db.out(~*** no code for state ~ & state & ~ ***~)'),'Comparison error on line 272')
	get(dataq,273)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {48}do CheckForMissedEmbed'),'Comparison error on line 273')
	get(dataq,276)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {40}END'),'Comparison error on line 276')
	get(dataq,277)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {32}end ! if dumptrace'),'Comparison error on line 277')
	get(dataq,279)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}END'),'Comparison error on line 279')
	get(dataq,280)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}Access:TextFile.Close()'),'Comparison error on line 280')
	get(dataq,282)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}! loop through all the procedures'),'Comparison error on line 282')
	get(dataq,283)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {24}! for each procedure, get all the embeds'),'Comparison error on line 283')
	get(dataq,284)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}end'),'Comparison error on line 284')
	get(dataq,285)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}?progressVar{{prop:progress} = records(txaq)'),'Comparison error on line 285')
	get(dataq,286)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {16}setcursor()'),'Comparison error on line 286')
	get(dataq,287)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('%WindowManagerMethodDataSection TakeAccepted (),BYTE 3500'),'Comparison error on line 287')
	get(dataq,288)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('x {14}long'),'Comparison error on line 288')
	get(dataq,289)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('vars {11}group,pre()'),'Comparison error on line 289')
	get(dataq,290)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('procname         string(200)'),'Comparison error on line 290')
	get(dataq,291)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('procFromABC      string(60)'),'Comparison error on line 291')
	get(dataq,292)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('procCategory     string(60)'),'Comparison error on line 292')
	get(dataq,293)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('embedname        string(60)'),'Comparison error on line 293')
	get(dataq,294)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('embedPriority    long'),'Comparison error on line 294')
	get(dataq,295)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('embedParam1      string(200)'),'Comparison error on line 295')
	get(dataq,296)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('embedParam2      string(200)'),'Comparison error on line 296')
	get(dataq,297)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('embedParam3      string(200)'),'Comparison error on line 297')
	get(dataq,298)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('whenLevel        byte'),'Comparison error on line 298')
	get(dataq,299)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto(' {15}end'),'Comparison error on line 299')
	get(dataq,300)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('dumptrace      byte(0)'),'Comparison error on line 300')
	get(dataq,301)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('LastProcName  like(procname)'),'Comparison error on line 301')
	get(dataq,302)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('lastEmbedName string(500)'),'Comparison error on line 302')
	get(dataq,303)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('currembedname string(500)'),'Comparison error on line 303')
	get(dataq,304)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('%ProcedureRoutines TakeAccepted 500'),'Comparison error on line 304')
	get(dataq,305)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('CheckForMissedEmbed  routine'),'Comparison error on line 305')
	get(dataq,306)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('   if sub(txt:rec,1,8) = ~[SOURCE]~'),'Comparison error on line 306')
	get(dataq,307)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('      !db.out(~*** MISSED EMBED at line ~ & lineno & ~, state ~ &  state & ~ ***~)'),'Comparison error on line 307')
	get(dataq,308)
	StringUtility.ReplaceSingleQuoteWithTilde(dataq.Text)
	AssertThat(dataq.Text,IsEqualto('   end'),'Comparison error on line 308')


 �  C   �       +       %LocalDataAfterClasses     +*    �   txa                             DCL_Clarion_TXAParser
DataQ                           Queue
Text                                cstring(1000)
								end
x                               long
 �  :   ?                                                                                                                                 j   {p轐\fE抖帴:窔 T      T  ���!       i, .     =�; */        &         %ClassItem %                            ErrorManager             ErrorStatusManager             FuzzyMatcher
   
       
   INIManager
   
       
   Translator       %DefaultBaseClassType %                   %ClassItem                 ErrorManager
   
       
   ErrorClass             ErrorStatusManager             ErrorStatusClass             FuzzyMatcher
   
       
   FuzzyClass
   
       
   INIManager             INIClass
   
       
   Translator             TranslatorClass       %ActualDefaultBaseClassType %                   %ClassItem                 ErrorManager                             ErrorStatusManager                             FuzzyMatcher                
   
       
   INIManager                
   
       
   Translator                       %ClassLines %                  %ClassItem            %ProgramAuthor %                                    %ProgramIcon %                                    %MessageDescription                               %GlobalExternal                                %ExternalSource %                          Dynamic Link Library (DLL)       %GenerateEmbedComments                             	   %INIType %                          NVD_INI    	   %INIFile %                          Program Name.INI    	   %ININame %                                    %INIProgramIniLocation %                          APPDIR       %INICSIDLDirectory %                          SV:CSIDL_PERSONAL       %CSIDLCompanyDir %                                    %CSIDLProductDir %                                    %CSIDLCreate                                %INIInAppDirectory                            	   %REGRoot %                          REG_CLASSES_ROOT       %DisableINISaveWindow                                %PreserveVars                        %PreserveVar %                   %PreserveVars            %EnableRunTimeTranslator                                %FuzzyMatchingEnabled                               %IgnoreCase                            
   %WordOnly                                %ButtonMarginsCompatibility                                %UseDefaultXPManifest                                %GenerateXPManifest                                %LinkGenerateXPManifest                                %AddVistaXPManifest                                %VistaManifestExecutionLevel %             	   	       	   asInvoker       %VistaManifestUIAccess                                %NoThemedControlsDependency                                %W7ManifestVista                                %W7ManifestW7                                 %ForceMakeTransparentXPManifest                                %ForceMakeColorXPManifest                                %ForceSHEETNoTheme                                %ExtUIXPMenuEnableGlobal                                %ExtUIXPMenuColorTypeGlobal %                          OFF       %ExtUIXPMenuDisableImageBar                               %ExtUIXPMenuEnableRuntime                                %ExtUIXPMenuRuntimeVar %                                    %ExtUIXPMenuColorLeftGlobal                     祆�        %ExtUIXPMenuColorRightGlobal                     Е�     (   %ExtUIXPMenuColorSelectionBarLeftGlobal                     祆�     )   %ExtUIXPMenuColorSelectionBarRightGlobal                     祆�        %ExtUIXPMenuSelVertical                            '   %ExtUIXPMenuColorSelectionBorderGlobal                     祆�        %ExtUIXPMenuColorHotLeftGlobal                     祆�         %ExtUIXPMenuColorHotRightGlobal                     祆�     $   %ExtUIXPMenuColorSelectedLeftGlobal                     祆�     %   %ExtUIXPMenuColorSelectedRightGlobal                     祆�     %   %ExtUIXPMenuColorNormalBarLeftGlobal                     祆�     &   %ExtUIXPMenuColorNormalBarRightGlobal                     祆�     &   %ExtUIXPMenuColorItemBackgroundGlobal                       �       %ExtUIXPMenuColorNormalText                                %ExtUIXPMenuColorSelectedText                                %ExtUIXPMenuColorHotText                                %ExtUIXPMenuFlat                               %ExtUIXPMenuShowImageBar                                %ExtUIXPMenuSeparator3D                               %ExtUIXPMenuSeparatorFull                                %ExtUIXPMenuVerticalLine                               %ExtUIMDITabGlobal %                          DISABLE       %ExtUIMDITabStyleGlobal %                          Default       %ExtUITabStyleGlobal %                          Default       %WindowEnableEnhanceFocus                                %SelectedText                               %SelectedRadio                               %SelectedSpin                               %SelectedCheck                               %SelectedDropList                               %SelectedList                               %SelectedDisplayChangeColor                               %SelectedColor                     ��         %SelectedStyle                               %SelectedRequired                                %SelectedRequiredColor                     ��         %SelectedDisplayBox                               %SelectedDisplayBoxFillColor                     ��         %SelectedDisplayBoxBorderColor                                %SelectedDisplayBoxBorderSize %                              %SelectedRequiredBox                             %   %SelectedRequiredDisplayBoxFillColor                     �       '   %SelectedRequiredDisplayBoxBorderColor                                %SelectedCaret                               %SelectedCaretColor                     ���        %SelectedCaretCharacter %                          �    "   %SelectedCaretCharacterSeparation %                          8       %ExcludeSelectedDropList                                %GlobalUseEnterInsteadTab                             !   %GlobalUseEnterInsteadTabExclude %                        %GlobalUseEnterInsteadTabEnable %                          Enable    %   %GlobalUseEnterInsteadTabEnableValue %                          True       %GlobalInterLine %                               %GlobalEnableAutoSizeColumn                                %GlobalEnableListFormatManager                             "   %GlobalUserFieldListFormatManager %                          1       %TableOrigin %                          Application       %FileEquate %             	   	       	   LFM_CFile       %ConfigFilePRE %                          CFG       %ConfigFileOEM                                %ConfigFileTHREAD                               %ConfigFileENCRYPT                                %ConfigFilePASSWORD %                                    %FormatNameSize %                              %FormatBufferSize %                              %VariableBufferSize %                              %ConfigFilePath %                                    %UseConfigFileName %                          Default       %ConfigFileNAME %                          Formats.FDB       %ColonCounter %                                    %WrongSymbol %                                    %DictionaryTableOrigin !                     %GlobalLFMSortOrderMenuText %             	   	       	   SortOrder       %GlobalEnableRebase                                %RBDMethod %                          Specify manually       %RBDImageBase %                          10000000       %DefaultGenerate                                %DefaultRILogout                               %LockRecoverTime %                    
          %DefaultThreaded %                          Use File Setting       %DefaultCreate %                          Use File Setting       %DefaultExternal %                          None External       %DefaultLocalExternal                                %DefaultExternalSource %                                    %DefaultExternalAPP                                %DefaultExport                                %DefaultOpenMode %                          Share       %DefaultUserAccess %             
   
       
   Read/Write       %DefaultOtherAccess %             	   	       	   Deny None       %DefaultLazyOpen                               %GeneratePropDataPath                                %PropDataPathLocation %                          CSIDLLIKEINI       %DataPathCSIDLDirectory %                          SV:CSIDL_PERSONAL       %DataPathCSIDLCompanyDir %                                    %DataPathCSIDLProductDir %                                    %DataPathCSIDLCreate                                %DataPathOtherDirectory %                                    %DataPathOtherDirectoryCreate                                %OverrideGenerate                    %File            %OverrideRILogout %                   %File                                 Use Default       %GlobalObject %                   %ClassItem                 ErrorManager             YES             ErrorStatusManager             YES             FuzzyMatcher             YES
   
       
   INIManager             YES
   
       
   Translator             YES       %ThisObjectName %                   %ClassItem                 ErrorManager             GlobalErrors             ErrorStatusManager             GlobalErrorsStatus             FuzzyMatcher             FuzzyMatcher
   
       
   INIManager             INIMgr
   
       
   Translator
   
       
   Translator       %UseDefaultABCBaseClass                    %ClassItem                 ErrorManager                       ErrorStatusManager                       FuzzyMatcher          
   
       
   INIManager          
   
       
   Translator                 %UseABCBaseClass                    %ClassItem                 ErrorManager                       ErrorStatusManager                       FuzzyMatcher          
   
       
   INIManager          
   
       
   Translator                 %ABCBaseClass %                   %ClassItem                 ErrorManager                             ErrorStatusManager                             FuzzyMatcher                
   
       
   INIManager                
   
       
   Translator                       %ExtBaseClass %                   %ClassItem            %BaseClassIncludeFile %                   %ClassItem            %DeriveFromBaseClass                    %ClassItem                 ErrorManager                        ErrorStatusManager                        FuzzyMatcher           
   
       
   INIManager           
   
       
   Translator                  %NewMethods                   %ClassItem            %NewMethodName %                   %NewMethods            %NewMethodPrototype %                   %NewMethods            %NewClassPropertyItems                   %ClassItem            %NewClassProperty %                   %NewClassPropertyItems            %NewClassDataType %                   %NewClassPropertyItems            %NewClassOtherType %                   %NewClassPropertyItems            %NewClassDataIsRef                    %NewClassPropertyItems            %NewClassDataSize %                   %NewClassPropertyItems            %NewClassDataDim1 %                   %NewClassPropertyItems            %NewClassDataDim2 %                   %NewClassPropertyItems            %NewClassDataDim3 %                   %NewClassPropertyItems            %NewClassDataDim4 %                   %NewClassPropertyItems            %ClassMethods                   %ClassItem            %ClassMethodName %                   %ClassMethods            %ClassMethodPrototype %                   %ClassMethods            %ClassPropertyItems                   %ClassItem            %ClassProperty %                   %ClassPropertyItems            %ClassDataType %                   %ClassPropertyItems            %ClassOtherType %                   %ClassPropertyItems            %ClassDataIsRef                    %ClassPropertyItems            %ClassDataSize %                   %ClassPropertyItems            %ClassDataDim1 %                   %ClassPropertyItems            %ClassDataDim2 %                   %ClassPropertyItems            %ClassDataDim3 %                   %ClassPropertyItems            %ClassDataDim4 %                   %ClassPropertyItems            %OverrideThreaded %                   %File                                 Use Default       %OverrideCreate %                   %File                                 Use Default       %OverrideExternal %                   %File                                 Use Default       %OverrideLocalExternal                    %File            %OverrideExternalSource %                   %File            %OverrideExternalAPP                    %File            %OverrideExport                    %File            %FileDeclarationMode %                   %File                                 Use User Options       %FileDeclarationType                    %File                                      %FileDeclarationThread                    %File                                      %FileDeclarationBindable                    %File                                     %FileDeclarationName %                   %File            %FileDeclarationOver %                   %File            %OverrideOpenMode %                   %File                                 Use Default       %OverrideUserAccess %                   %File                                 Use Default       %OverrideOtherAccess %                   %File                                 Use Default       %OverrideLazyOpen %                   %File                                 Use Default       %StandardExternalModule                    %Module                                           DCL_Clarion_TXAParser_Tests.clw          "   "       "   DCL_Clarion_TXAParser_Tests001.clw                 %NoGenerateGlobals                                %WindowManagerType %                          WindowManager       %ResetOnGainFocus                                %AutoToolbar                               %AutoRefresh                               %ImageClass %                          ImageManager       %ErrorStatusManagerType %                          ErrorStatusClass       %ErrorManagerType %             
   
       
   ErrorClass       %DefaultErrorCategory %                          ABC       %AllowSelectCopy                                %StoreErrorHistory                                %LimitStoredHistory                                %ErrorHistoryThreshold %                    ,         %HistoryViewTrigger %                          Level:Fatal       %PopupClass %             
   
       
   PopupClass       %SelectFileClass %                          SelectFileClass       %ResizerType %                          WindowResizeClass       %ResizerDeFaultFindParents                               %ResizerDefaultOptimizeMoves                               %ResizerDefaultOptimizeRedraws                            
   %INIClass %                          INIClass       %RunTimeTranslatorType %                          TranslatorClass       %ExtractionFilename %                                    %TranslationGroups                        %TranslationFile %                   %TranslationGroups            %TranslationGroup %                   %TranslationGroups            %CalendarManagerType %                          CalendarClass       %GlobalChangeColor                                %GlobalColorSunday                     �          %GlobalColorSaturday                     �          %GlobalColorHoliday                      �         %GlobalColorOther                                %GlobalSelectOnClose %                          Select       %GlobalUseABCClasess                               %FileManagerType %                          FileManager       %ViewManagerType %                          ViewManager       %RelationManagerType %                          RelationManager       %BrowserType %                          BrowseClass       %ActiveInvisible                                %AllowUnfilled                                %RetainRow                               %FileDropManagerType %                          FileDropClass       %FileDropComboManagerType %                          FileDropComboClass       %FormVCRManagerType %                          FormVCRClass       %BrowseEIPManagerType %                          BrowseEIPManager       %EditInPlaceInterface %                          Detailed       %EditInPlaceType %                          EditEntryClass       %EditInPlaceEntryType %                          EditEntryClass       %EditInPlaceTextType %                          EditTextClass       %EditInPlaceCheckType %                          EditCheckClass       %EditInPlaceSpinType %                          EditSpinClass       %EditInPlaceDropListType %                          EditDropListClass       %EditInPlaceDropComboType %                          EditDropComboClass       %EditInPlaceColorType %                          EditColorClass       %EditInPlaceFileType %                          EditFileClass       %EditInPlaceFontType %                          EditFontClass       %EditInPlaceMultiSelectType %                          EditMultiSelectClass       %EditInPlaceCalendarType %                          EditCalendarClass       %EditInPlaceLookupType %                          EditLookupClass       %EditInPlaceOtherType %                          EditEntryClass       %QBEFormType %                          QueryFormClass       %QBEFormVisualType %                          QueryFormVisual       %QBEListType %                          QueryListClass       %QBEListVisualType %                          QueryListVisual       %StepManagerType %             	   	       	   StepClass       %StepManagerLongType %                          StepLongClass       %StepManagerRealType %                          StepRealClass       %StepManagerStringType %                          StepStringClass       %StepManagerCustomType %                          StepCustomClass       %StepLocatorType %                          StepLocatorClass       %EntryLocatorType %                          EntryLocatorClass       %IncrementalLocatorType %                          IncrementalLocatorClass       %FilteredLocatorType %                          FilterLocatorClass       %FuzzyMatcherClass %             
   
       
   FuzzyClass       %GridClass %             	   	       	   GridClass       %SidebarClass %                          SidebarClass       %ProcessType %                          ProcessClass       %PrintPreviewType %                          PrintPreviewClass       %ReportManagerType %                          ReportManager    !   %ReportTargetSelectorManagerType %                          ReportTargetSelectorClass       %BreakManagerType %                          BreakManagerClass       %AsciiViewerClass %                          AsciiViewerClass       %AsciiSearchClass %                          AsciiSearchClass       %AsciiPrintClass %                          AsciiPrintClass       %AsciiFileManagerType %                          AsciiFileClass       %ToolbarClass %                          ToolbarClass       %ToolbarListBoxType %                          ToolbarListboxClass       %ToolbarRelTreeType %                          ToolbarReltreeClass       %ToolbarUpdateClassType %                          ToolbarUpdateClass       %ToolbarFormVCRType %                          ToolbarFormVCRClass       %OverrideAbcSettings                                %AbcSourceLocation %                          LINK       %AbcLibraryName %                                    %AppTemplateFamily %                          ABC       %CWTemplateVersion %                          v8.0       %ABCVersion %                          8000       %W7ManifestW8                                               j   梺0q~�荂瘬獖糾�         蛀��!       齴{ .     =�; */                  %Parameters %                          (*long addr)       %ProcedureParameters                                 %ProcedureParameterName %                   %ProcedureParameters                           addr       %ProcedureParameterOrigName %                   %ProcedureParameters                           addr       %ProcedureParameterType %                   %ProcedureParameters                           long       %ProcedureParameterDefault %                   %ProcedureParameters                                     %ProcedureParameterOmitted                    %ProcedureParameters                                %ProcedureParameterByReference                    %ProcedureParameters                               %ProcedureParameterConstant                    %ProcedureParameters                                %GenerateOpenClose                                %GenerateSaveRestore                                                                                                                                                                                                                                                d   �5鞌H趩@ㄝ鱺�         
���!       i, .     �0@ */        !   渄�w鹍J夛�.~負�%;O浞﨡繗�?B附�   闶痈艭巨苄��坊藏m@筂夹                                                 ;�: */ ;�: */      	   ABC$ToDo                        ABC               '> */            ClarionTest$TestSupportIncludes    ����                      %ShowHelpComments                                %TestClasses %                       %IncludeDevRoadmapsClarionLib                            {p轐\fE抖帴:窔              �  
G	�	汯K捁�5艋�         ����!       駙{ .     駙{ .                              ��       Dummy        Window                                                                                                                                                       r   \�G栥瑼q/�         ��!       鮶{ .     '> */               &   ParseTXA_CountProcedures_VerifyNumber 坊藏m@筂夹       (*long addr),long,pascal 幂(ExB浘霌禑�                Test procedures                        ClarionTest$TestProcedure        Test procedures s . 攪{       '> */           ClarionTest$TestSupport    ����                      %AddressVar %                          addr    
   %TestCode %                                 梺0q~�荂瘬獖糾�蠵�.�H�膦�0O U㧐O逊D筅CK辄                                                                                                                                                                                                                                                            p   坊藏m@筂夹         .���!       K .     '> */           剙扛篝B�%呀摨X\�G栥瑼q/裄]9LHKA憍堑oOrYBNW9kD�z�5� �                                                  ABC$GENERATED               '> */                                                        �  幊热殯A暢鉪>槄         ����!       &梴 .     &梴 .                                                                                                                                                                                                                            �  疁�7{#K�A阚烯�         ����!       鞯K .     鞯K .                              ��       Dummy        Window                                                                                                                                                       r   R]9LHKA憍堑oO         ���!       鎬{ .     '> */                   ParseTXA_VerifyErrorCountIsZero 坊藏m@筂夹       (*long addr),long,pascal 
G	�	汯K捁�5艋�      (          Test procedures                        ClarionTest$TestProcedure        Test procedures s . �儃       '> */           ClarionTest$TestSupport    ����                      %AddressVar %                          addr    
   %TestCode %                                 附塰l7dJ╝H=⒛=Q6颤妈isN忷/'gbZi X�-茳钃F寊�*莅錀  �  U㧐O逊D筅CK辄         ����!       鱶{ .     鱶{ .                                                                                                                                                                                                                            j   �%;O浞﨡繗�?B附�         铸��!       i, .     y筀 .                  %SaveCreateLocalMap %                          1       %GenerationCompleted %                  %Module                 DCL_Clarion_TXAParser_Tests.clw             1"   "       "   DCL_Clarion_TXAParser_Tests001.clw             1       %LastTarget32 %                          1       %LastProgramExtension %                          DLL       %LastApplicationDebug %                                    %LastApplicationLocalLibrary %                                                                                                                                                                                                                                                    �  蠵�.�H�膦�0O         欮��!       鷝{ .     '> */           +       %ProcessedCode     +*    x   	txa.Parse('embeds.txa')
	AssertThat(txa.GetProcedureCount(),IsEqualTo(2),'Wrong number of procedures found in TXA')
 �  #   %        +       %LocalDataAfterClasses     +*    @   txa                                     DCL_Clarion_TXAParser
 �                                                                                                                                                                       r   剙扛篝B�%呀摨X         ����!       K .     '> */               "   ParseTXA_CountEmbeds_VerifyNumber 坊藏m@筂夹       (*long addr),long,pascal 疁�7{#K�A阚烯�      
          Test procedures                        ClarionTest$TestProcedure        Test procedures s . 媨       '> */           ClarionTest$TestSupport    ����                      %AddressVar %                          addr    
   %TestCode %                                 �1絝Xk)D�&r擡���*罁趇稡囥�!ズ靆 �8� e撽D�6劀柈�+�  �8� e撽D�6劀柈�+         ����!       K .     K .                                                                                                                                                                                                                            �  幂(ExB浘霌禑�         ����!       {{ .     {{ .                              ��       Dummy        Window                                                                                                                                                       j   附塰l7dJ╝H=⒛=Q         蛀��!       顎{ .     =�; */                  %Parameters %                          (*long addr)       %ProcedureParameters                                 %ProcedureParameterName %                   %ProcedureParameters                           addr       %ProcedureParameterOrigName %                   %ProcedureParameters                           addr       %ProcedureParameterType %                   %ProcedureParameters                           long       %ProcedureParameterDefault %                   %ProcedureParameters                                     %ProcedureParameterOmitted                    %ProcedureParameters                                %ProcedureParameterByReference                    %ProcedureParameters                               %ProcedureParameterConstant                    %ProcedureParameters                                %GenerateOpenClose                                %GenerateSaveRestore                                                                                                                                                                                                                                                                            