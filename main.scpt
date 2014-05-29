on open ScannedDocument
	tell application "PDFpen"
		activate
		open ScannedDocument
		ocr document 1
		repeat
			if performing ocr of document 1 is false then
				exit repeat
			end if
		end repeat
		
		save document 1
		set documentPath to path of document 1
		
		close document 1
		quit
	end tell
end open