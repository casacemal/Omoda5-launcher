import asyncio
import websockets
import uuid
import time
import hashlib
import json

TRUSTED_CLIENT_TOKEN = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
SEC_MS_GEC_VERSION = "1-143.0.3650.75"

def generate_sec_msg_gec():
    win_epoch = 11644473600
    ticks = int(time.time())
    ticks += win_epoch
    ticks -= ticks % 300
    ticks *= 10000000
    str_to_hash = f"{ticks}{TRUSTED_CLIENT_TOKEN}"
    return hashlib.sha256(str_to_hash.encode("ascii")).hexdigest().upper()

async def test_edge():
    req_id = uuid.uuid4().hex
    sec_ms_gec = generate_sec_msg_gec()
    url = (
        f"wss://speech.platform.bing.com/consumer/speech/synthesize/readaloud/edge/v1"
        f"?TrustedClientToken={TRUSTED_CLIENT_TOKEN}"
        f"&ConnectionId={req_id}"
        f"&Sec-MS-GEC={sec_ms_gec}"
        f"&Sec-MS-GEC-Version={SEC_MS_GEC_VERSION}"
    )

    headers = {
        "Origin": "chrome-extension://jdiccldimpdaibmpdkjnbmckianbfold",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0",
    }

    try:
        async with websockets.connect(url, additional_headers=headers) as ws:
            print("Connected!")
            
            ts = time.strftime("%a %b %d %Y %H:%M:%S GMT%z", time.gmtime())
            msg1 = (
                f"X-Timestamp:{ts}\r\n"
                f"Content-Type:application/json; charset=utf-8\r\n"
                f"Path:speech.config\r\n\r\n"
                f"{{\"context\":{{\"synthesis\":{{\"audio\":{{\"metadataoptions\":{{\"sentenceBoundaryEnabled\":\"false\",\"wordBoundaryEnabled\":\"false\"}},\"outputFormat\":\"audio-24khz-48kbitrate-mono-mp3\"}}}}}}}}"
            )
            await ws.send(msg1)
            
            req_id_msg = str(uuid.uuid4())
            ssml = "<speak version='1.0' xmlns='http://www.w3.org/2001/10/synthesis' xml:lang='tr-TR'><voice name='tr-TR-EmelNeural'><prosody pitch='+0Hz' rate='+0%' volume='+0%'>Merhaba</prosody></voice></speak>"
            msg2 = (
                f"X-RequestId:{req_id_msg}\r\n"
                f"Content-Type:application/ssml+xml\r\n"
                f"X-Timestamp:{ts}\r\n"
                f"Path:ssml\r\n\r\n"
                f"{ssml}"
            )
            await ws.send(msg2)

            while True:
                resp = await ws.recv()
                if isinstance(resp, str):
                    print("String msg:", resp[:100])
                    if "turn.end" in resp:
                        break
                else:
                    print("Binary msg size:", len(resp))
            print("Edge TTS Websocket Test Success")
    except Exception as e:
        print("Failed:", e)

if __name__ == "__main__":
    asyncio.run(test_edge())
