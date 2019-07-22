
@echo off
	for /f "delims=" %%a in (lista.txt) do (
		@echo %%a
		@echo %%a >> wynik_ping_po_nazwie.txt
		ping -n 1 %%a  >>wynik_ping_po_nazwie.txt
		@echo: >> wynik_ping_po_nazwie.txt
		@echo ----------------------------------------------------------------------------- >> wynik_ping_po_nazwie.txt
		@echo ----------------------------------------------------------------------------- >> wynik_ping_po_nazwie.txt
		@echo: >> wynik_ping_po_nazwie.txt	
		
						)
pause
