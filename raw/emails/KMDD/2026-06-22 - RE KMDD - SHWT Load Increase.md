---
title: "RE: KMDD - SHWT Load Increase"
date: 2026-06-22
time: "11:40"
from: "Lê Văn Giang <gianglv.pt@vietsov.com.vn>"
to: "Nguyen Dinh Manh; Võ Việt Hải; Đào Đức Quang; Nguyễn Văn Đác; Nguyễn Hải Sơn; Nguyễn Thị Lan Phương; Bùi Quốc Huy; Phạm Văn Hải"
folder: "KMDD"
tags: [email]
attachments: [
  - "image003.png"
  - "image006.jpg"
  - "image007.png"
  - "image001.png"
  - "image002.png"
]
---

# RE: KMDD - SHWT Load Increase

**From:** Lê Văn Giang <gianglv.pt@vietsov.com.vn>
**To:** Nguyen Dinh Manh; Võ Việt Hải; Đào Đức Quang; Nguyễn Văn Đác; Nguyễn Hải Sơn; Nguyễn Thị Lan Phương; Bùi Quốc Huy; Phạm Văn Hải
**Date:** 2026-06-22 11:40
**Attachments:** image003.png, image006.jpg, image007.png, image001.png, image002.png  

---

**CAUTION: This email originated from outside your organization. Exercise caution when opening attachments or on clicking links from unknown senders.**   


Dear Mạnh, Ngọc.

Anh có xem sơ bộ bảng tính công suất Honeywell có một số vấn đề sau:

  * Hệ thống điều khiển dùng cùng loại PLC safety và IO safety chung cho cả PCS và SIS, về cơ bản PLC safety dùng cho PCS sẽ bị giới hạn về function và thư viện vận hành cho PCS.
  * Bảng tính dựa trên thiết kế feed với số lượng IO của feed, anh có làm bảng so sánh tính hiệu giữa honeywell theo feed và honeywell theo IO mới nhất số lượng card tăng lên đáng kể.



  * Trong tính toán công suất của Honeywell ko hề có Quạt, đèn, network backup drive, relay...Nếu cộng các thiết bị này vào sẽ tăng đáng kể (5 tủ sẽ có 10 quạt và 10 đèn).



Thanks & Best regards.

 

**From:** Nguyen Dinh Manh <manhnd1@ptsc.com.vn>   
**Sent:** Saturday, June 20, 2026 11:26 AM  
**To:** Lê Văn Giang <gianglv.pt@vietsov.com.vn>; Võ Việt Hải <haivv.rd@vietsov.com.vn>; Đào Đức Quang <quangdd.pt@vietsov.com.vn>; Nguyễn Văn Đác <dacnv.pt@vietsov.com.vn>; Nguyễn Hải Sơn <sonnh.cd@vietsov.com.vn>; Nguyễn Thị Lan Phương <phuongnl.cd@vietsov.com.vn>; Bùi Quốc Huy <huybq.cd@vietsov.com.vn>; Phạm Văn Hải <haipv.pt@vietsov.com.vn>  
**Cc:** Đồng Văn Nhường <nhuongdx.cd@vietsov.com.vn>; Trần Thanh Tùng <tungthanhtran@ptsc.com.vn>; Nguyễn Chí Nghĩa <nghianc@ptsc.com.vn>; Nguyễn Thanh Sơn <sonnt1@ptsc.com.vn>; Hoàng Anh Tú <tuanhhoang@ptsc.com.vn>; Lê Phú Cường <cuonglp@ptsc.com.vn>; Phan Nhu Ngoc MC005744 <ngocpn@ptsc.com.vn>; Trần Sóng Biển <bientran@ptsc.com.vn>; Nguyễn Văn Tây <taynguyen@ptsc.com.vn>; Nguyễn Hoàng Khánh <khanhnh@ptsc.com.vn>; Nguyễn Hải Nam NV <namnh3@ptsc.com.vn>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**_LƯU Ý_** _: Đây là EMAIL BÊN NGOÀI!!! KHÔNG “BẤM/MỞ” các liên kết hoặc tệp đính kèm trừ khi bạn chắc chắn về người gửi thư và bạn đang mong đợi thông tin liên lạc này và biết rằng nội dung đó an toàn.__  
_Nếu thấy thư  này đáng ngờ, hãy chuyển thư này tới bộ phận hỗ trợ [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)_  
_**ВНИМАНИЕ**_ _: ЭТО ВНЕШНЕЕ ПИСЬМО!!! НЕ НАЖИМАЙТЕ и НЕ ОТКРЫВАЙТЕ ссылки или вложения, если вы не уверены в отправителе, ожидаете это письмо и знаете, что его содержимое безопасно._  
_Сообщение кажется подозрительным? Отправьте на адрес  [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)__  
---  
  
 

Dear A. Giang and VSP team,

 

Sau cuộc họp ngày thứ 5, PTSC đã rà soát lại tổng thể công suất tiêu thụ thưc tế của ICSS (DD-WHP) như file đính kèm.

Sau dựa vào thông tin này, tính toán lượng công suất tiêu thụ hàng ngày  của ICSS, kết quả như sau: 

 

Area (DD-WHP) |  Equipment Rating (DE – 19Jun26) |  Daily Usage Req. (DE – 19Jun26) |  FEED Equipment Rate |  FEED Daily Usage Req. |  Increasing % vs FEED (Daily Usage)  
---|---|---|---|---|---  
PCS/ESD/FGS Inside Cabinet |  1281.3 W |  25817 Wh/day |  564 W Refer (KDP-DDA-02-RP-I-0001-B2 DD-WHP INSTRUMENTATION POWER CONSUMPTION AND HEAT EMISSION) |  10828 Wh/day |  138%  
PCS/ESD/FGS Outside Cabinet |  1609.6 W |  18314 Wh/day (*) |  944 W Refer (KDP-DDA-02-RP-I-0001-B2 DD-WHP INSTRUMENTATION POWER CONSUMPTION AND HEAT EMISSION) |  18124 Wh/day |  1.04% (*)  
  
(*) mặc dù Rating của outside cabinet (field instrument) tăng, tuy nhiên hầu hết ở khu vực F&G và hoạt động intermittent/emergency case, nên tải tiêu thụ hang ngày không nhiều.

 

Với kết quả trên, hệ thống Solar Hybrid Wind Turbine **đang tăng 32% công suất** (net) so với cấu hình thiết kế hiện tại. Trong đó tỉ trọng gói ICSS chiếm 16.5%; gói Chemical Injection 11% và Telecom/WHCP/Other ~4% và ảnh hưởng nghiêm trọng tới gói SHWT, layout, platform weight và rất nhiều vấn đề đi kèm.

 

**Do đó kính nhờ VSP team review và tiếp tục rà soát, tìm kiếm giải pháp giảm thiếu tối đa công suất tiêu thụ của hệ thống ICSS Inside Cabinet và bám sát với yêu cầu của đầu bài kỹ thuật đưa ra về maximum công suất (Technical requisition: KDP-OOO-03-RQ-I-0001-D0).**

 

Em đề xuất sáng thứ 2 9:00AM 22Jun26 ta sẽ họp bàn lại vấn đề này trước khi tổ chức làm việc với CPY cùng ngày.

Thank you,

 

BRs,

******** |  **NGUYEN DINH _MANH_ **  
---|---  
Engineering Department - PTSC M&C Co.,Ltd  
**P** +84 254 3577 888 [Ext: 7560] – **M** +84 985 590 819   
  
 

 

**From:** Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>   
**Sent:** Friday, 19 June, 2026 10:34 AM  
**To:** Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>; Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>; Đào Đức Quang <[quangdd.pt@vietsov.com.vn](mailto:quangdd.pt@vietsov.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>; Nguyễn Thị Lan Phương <[phuongnl.cd@vietsov.com.vn](mailto:phuongnl.cd@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Trần Sóng Biển <[bientran@ptsc.com.vn](mailto:bientran@ptsc.com.vn)>; Phan Nhu Ngoc MC005744 <[ngocpn@ptsc.com.vn](mailto:ngocpn@ptsc.com.vn)>; Lê Phú Cường <[cuonglp@ptsc.com.vn](mailto:cuonglp@ptsc.com.vn)>; Hoàng Anh Tú <[tuanhhoang@ptsc.com.vn](mailto:tuanhhoang@ptsc.com.vn)>; Nguyễn Thanh Sơn <[sonnt1@ptsc.com.vn](mailto:sonnt1@ptsc.com.vn)>; Phạm Văn Hải <[haipv.pt@vietsov.com.vn](mailto:haipv.pt@vietsov.com.vn)>  
**Cc:** Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**CAUTION: This email originated from outside your organization. Exercise caution when opening attachments or on clicking links from unknown senders.**

Dear Mạnh.

Inside cabinet có 927W thôi mà.

Thanks & Best regards.

 

**From:** Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>   
**Sent:** Friday, June 19, 2026 8:25 AM  
**To:** Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>; Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>; Đào Đức Quang <[quangdd.pt@vietsov.com.vn](mailto:quangdd.pt@vietsov.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>; Nguyễn Thị Lan Phương <[phuongnl.cd@vietsov.com.vn](mailto:phuongnl.cd@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Trần Sóng Biển <[bientran@ptsc.com.vn](mailto:bientran@ptsc.com.vn)>; Phan Nhu Ngoc MC005744 <[ngocpn@ptsc.com.vn](mailto:ngocpn@ptsc.com.vn)>; Lê Phú Cường <[cuonglp@ptsc.com.vn](mailto:cuonglp@ptsc.com.vn)>; Hoàng Anh Tú <[tuanhhoang@ptsc.com.vn](mailto:tuanhhoang@ptsc.com.vn)>; Nguyễn Thanh Sơn <[sonnt1@ptsc.com.vn](mailto:sonnt1@ptsc.com.vn)>; Phạm Văn Hải <[haipv.pt@vietsov.com.vn](mailto:haipv.pt@vietsov.com.vn)>  
**Cc:** Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**_LƯU Ý_** _: Đây là EMAIL BÊN NGOÀI!!! KHÔNG “BẤM/MỞ” các liên kết hoặc tệp đính kèm trừ khi bạn chắc chắn về người gửi thư và bạn đang mong đợi thông tin liên lạc này và biết rằng nội dung đó an toàn.__  
_Nếu thấy thư  này đáng ngờ, hãy chuyển thư này tới bộ phận hỗ trợ [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)_  
_**ВНИМАНИЕ**_ _: ЭТО ВНЕШНЕЕ ПИСЬМО!!! НЕ НАЖИМАЙТЕ и НЕ ОТКРЫВАЙТЕ ссылки или вложения, если вы не уверены в отправителе, ожидаете это письмо и знаете, что его содержимое безопасно._  
_Сообщение кажется подозрительным? Отправьте на адрес  [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)__  
---  
  
 

Dear a Giang,

 

Trong lúc PMC đang kiểm tra lại các khu vực Field Device Power Consumption (Outside Cabinet), khu vực Inside Cabinet cũng đang chiếm một trọng số rất lớn (2273W) và cũng bắt buộc phải cắt giảm mới meet được cấu hình hiện tại của SHWT system.

 

Anh Giang please xem lại phần tải này và tìm giải pháp để giảm hết mức có thể nhé ạ. Vì với con số hiện tại, Field Device có giảm cách mấy cũng ko xử lý được với phương án Solar hiện tại.

 

PTSC trong hôm nay sẽ có kết quả phần Field Device và ta sẽ call cuộc họp ngày mai để tiếp tục trao đổi ạ

 

**** |  **NGUYEN DINH _MANH_ **  
---|---  
Engineering Department - PTSC M&C Co.,Ltd  
**P** +84 254 3577 888 [Ext: 7560] – **M** +84 985 590 819   
  
 

 

**From:** Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>   
**Sent:** Wednesday, 17 June, 2026 3:11 PM  
**To:** Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>; Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>; Đào Đức Quang <[quangdd.pt@vietsov.com.vn](mailto:quangdd.pt@vietsov.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>; Nguyễn Thị Lan Phương <[phuongnl.cd@vietsov.com.vn](mailto:phuongnl.cd@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Trần Sóng Biển <[bientran@ptsc.com.vn](mailto:bientran@ptsc.com.vn)>; Phan Nhu Ngoc MC005744 <[ngocpn@ptsc.com.vn](mailto:ngocpn@ptsc.com.vn)>; Lê Phú Cường <[cuonglp@ptsc.com.vn](mailto:cuonglp@ptsc.com.vn)>; Hoàng Anh Tú <[tuanhhoang@ptsc.com.vn](mailto:tuanhhoang@ptsc.com.vn)>; Nguyễn Thanh Sơn <[sonnt1@ptsc.com.vn](mailto:sonnt1@ptsc.com.vn)>; Phạm Văn Hải <[haipv.pt@vietsov.com.vn](mailto:haipv.pt@vietsov.com.vn)>  
**Cc:** Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**CAUTION: This email originated from outside your organization. Exercise caution when opening attachments or on clicking links from unknown senders.**

Dear Mạnh.

Anh gửi lại tài liệu theo yc nhé.

Thanks

 

**From:** Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>   
**Sent:** Wednesday, June 17, 2026 2:31 PM  
**To:** Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>; Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>; Đào Đức Quang <[quangdd.pt@vietsov.com.vn](mailto:quangdd.pt@vietsov.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>; Nguyễn Thị Lan Phương <[phuongnl.cd@vietsov.com.vn](mailto:phuongnl.cd@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Trần Sóng Biển <[bientran@ptsc.com.vn](mailto:bientran@ptsc.com.vn)>; Phan Nhu Ngoc MC005744 <[ngocpn@ptsc.com.vn](mailto:ngocpn@ptsc.com.vn)>; Lê Phú Cường <[cuonglp@ptsc.com.vn](mailto:cuonglp@ptsc.com.vn)>; Hoàng Anh Tú <[tuanhhoang@ptsc.com.vn](mailto:tuanhhoang@ptsc.com.vn)>; Nguyễn Thanh Sơn <[sonnt1@ptsc.com.vn](mailto:sonnt1@ptsc.com.vn)>; Phạm Văn Hải <[haipv.pt@vietsov.com.vn](mailto:haipv.pt@vietsov.com.vn)>  
**Cc:** Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**_LƯU Ý_** _: Đây là EMAIL BÊN NGOÀI!!! KHÔNG “BẤM/MỞ” các liên kết hoặc tệp đính kèm trừ khi bạn chắc chắn về người gửi thư và bạn đang mong đợi thông tin liên lạc này và biết rằng nội dung đó an toàn.__  
_Nếu thấy thư  này đáng ngờ, hãy chuyển thư này tới bộ phận hỗ trợ [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)_  
_**ВНИМАНИЕ**_ _: ЭТО ВНЕШНЕЕ ПИСЬМО!!! НЕ НАЖИМАЙТЕ и НЕ ОТКРЫВАЙТЕ ссылки или вложения, если вы не уверены в отправителе, ожидаете это письмо и знаете, что его содержимое безопасно._  
_Сообщение кажется подозрительным? Отправьте на адрес  [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)__  
---  
  
 

Dear anh [ @Lê Văn Giang](mailto:gianglv.pt@vietsov.com.vn), anh [ @Phạm Văn Hải](mailto:haipv.pt@vietsov.com.vn)

 

Như trao đổi trong meeting sáng nay, nhờ anh gửi lại cập nhật bảng thông kế Load của ICSS, với làm rõ các tải Continuous & Intermittent hoặc Stand-by Load, và làm rõ tần suất hoạt động trung bình của thiết bị để tính toán lại rõ hơn công suất tiêu thụ thực tế của ICSS. Nhờ a gửi lại luôn trong chiều nay để team PMC action.

 

Với WHCP Pump, với kết quả test thực tế sáng mai, nhờ các anh thông tin lại absorb power đo đạt được.

 

Vấn đề này gấp nên nhờ các anh ưu tiến xử lý gấp ạ.

 

BRs,

Mạnh

 

\-----Original Appointment-----  
**From:** Nguyen Dinh Manh   
**Sent:** Wednesday, 17 June, 2026 10:06 AM  
**To:** Lê Văn Giang; Võ Việt Hải; Đào Đức Quang; Nguyễn Văn Đác; Nguyễn Hải Sơn; Nguyễn Thị Lan Phương; Bùi Quốc Huy; Nguyễn Văn Tây; Trần Sóng Biển; Phan Nhu Ngoc MC005744; Lê Phú Cường; Hoàng Anh Tú; Nguyễn Thanh Sơn  
**Cc:** Đồng Văn Nhường  
**Subject:** KMDD - SHWT Load Increase  
**When:** Wednesday, 17 June, 2026 10:30 AM-11:00 AM (UTC+07:00) Bangkok, Hanoi, Jakarta.  
**Where:** Microsoft Teams Meeting

 

Dear các anh,

 

Kindly be invited to join the meeting as following for SWHT Load List and ICSS Power Consumption: 

 

Time: 10:30Am

Link: 

_______________________________________________________________________________

**Microsoft Teams meeting**

**Join:**[ https://teams.microsoft.com/meet/49627148264133?p=GUszM4XB1NtXToKcg2](https://teams.microsoft.com/meet/49627148264133?p=GUszM4XB1NtXToKcg2 "Meeting join")

Meeting ID: 496 271 482 641 33

Passcode: pA74jT6L

* * *

[Need help?](https://aka.ms/JoinTeamsMeeting?omkt=en-US) | [ System reference](https://teams.microsoft.com/l/meetup-join/19%3ameeting_NGY2ZjcyZmQtNWM5OS00ZDAwLWJlZjgtZGMyMGY3NTQ4YWE1%40thread.v2/0?context=%7b%22Tid%22%3a%22c5f8b837-074d-4184-92dc-984a1f2d33a8%22%2c%22Oid%22%3a%22052ee817-efe8-4800-9fdb-f3c4b683adfe%22%7d)

For organizers: [Meeting options](https://teams.microsoft.com/meetingOptions/?organizerId=052ee817-efe8-4800-9fdb-f3c4b683adfe&tenantId=c5f8b837-074d-4184-92dc-984a1f2d33a8&threadId=19_meeting_NGY2ZjcyZmQtNWM5OS00ZDAwLWJlZjgtZGMyMGY3NTQ4YWE1@thread.v2&messageId=0&language=en-US)

________________________________________________________________________________

 

BRs,

Mạnh

_____________________________________________  
**From:** Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>   
**Sent:** Wednesday, 17 June, 2026 9:37 AM  
**To:** Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>; Đào Đức Quang <[quangdd.pt@vietsov.com.vn](mailto:quangdd.pt@vietsov.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>; Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>; Nguyễn Thị Lan Phương <[phuongnl.cd@vietsov.com.vn](mailto:phuongnl.cd@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>  
**Cc:** Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**CAUTION: This email originated from outside your organization. Exercise caution when opening attachments or on clicking links from unknown senders.**

Dear Mr. Hai,

Regarding the online meeting for the Hybrid Solar/Wind Power Load List (KMDD project), I would like to propose scheduling it for 10:30 AM today.

Please let me know if this time works for everyone so we can proceed with the link.

Best regards,

Le Van Giang

Automaton Engineer

 

**From:** Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>   
**Sent:** Wednesday, June 17, 2026 8:24 AM  
**To:** Đào Đức Quang <[quangdd.pt@vietsov.com.vn](mailto:quangdd.pt@vietsov.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>; Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>; Nguyễn Thị Lan Phương <[phuongnl.cd@vietsov.com.vn](mailto:phuongnl.cd@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>; Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>  
**Cc:** Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>  
**Subject:** FW: KMDD - SHWT Load Increase  
**Importance:** High

 

Dear Mr. Quang/Mr. Đác/Mr. Giang

 

Regarding the Load List for Hybrid Solar/Wind Power for the KMDD project, PMC and PVEP-KM would like to hold an online meeting today to discuss in detail.

Attachments include information from the Topside designer (PMC). Please inform us of your preferred meeting time.

 

BRs

Vo Viet Hai (Mr.)

VSP Engineering manager (KMDD project)

Tel: +84 913693116

 

**From:** Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>   
**Sent:** Tuesday, June 16, 2026 6:20 PM  
**To:** Nguyễn Hải Sơn <[sonnh.cd@vietsov.com.vn](mailto:sonnh.cd@vietsov.com.vn)>  
**Cc:** Hoàng Anh Tú <[tuanhhoang@ptsc.com.vn](mailto:tuanhhoang@ptsc.com.vn)>; Nguyen Anh Khoa PE000011 <[khoana@ptsc.com.vn](mailto:khoana@ptsc.com.vn)>; Nguyễn Thanh Sơn <[sonnt1@ptsc.com.vn](mailto:sonnt1@ptsc.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Nguyễn Hoàng Khánh <[khanhnh@ptsc.com.vn](mailto:khanhnh@ptsc.com.vn)>; Nguyễn Hải Nam NV <[namnh3@ptsc.com.vn](mailto:namnh3@ptsc.com.vn)>; Trần Sóng Biển <[bientran@ptsc.com.vn](mailto:bientran@ptsc.com.vn)>; Lê Phú Cường <[cuonglp@ptsc.com.vn](mailto:cuonglp@ptsc.com.vn)>; Nguyễn Văn Đác <[dacnv.pt@vietsov.com.vn](mailto:dacnv.pt@vietsov.com.vn)>; Bùi Quốc Huy <[huybq.cd@vietsov.com.vn](mailto:huybq.cd@vietsov.com.vn)>; Phạm Lê Bảo Hoàng <[hoangplb.cd@vietsov.com.vn](mailto:hoangplb.cd@vietsov.com.vn)>; Phan Nhu Ngoc MC005744 <[ngocpn@ptsc.com.vn](mailto:ngocpn@ptsc.com.vn)>; Phạm Văn Hải <[haipv.pt@vietsov.com.vn](mailto:haipv.pt@vietsov.com.vn)>; Lê Văn Giang <[gianglv.pt@vietsov.com.vn](mailto:gianglv.pt@vietsov.com.vn)>; Đồng Văn Nhường <[nhuongdx.cd@vietsov.com.vn](mailto:nhuongdx.cd@vietsov.com.vn)>; Trần Thanh Tùng <[tungthanhtran@ptsc.com.vn](mailto:tungthanhtran@ptsc.com.vn)>; Nguyen Chiem Huy <[huync@pvep.com.vn](mailto:huync@pvep.com.vn)>; Lam Duy Hiep <[hiepld@pvep.com.vn](mailto:hiepld@pvep.com.vn)>; Le Thanh Long <[longlt@pvep.com.vn](mailto:longlt@pvep.com.vn)>; Nguyễn Chí Nghĩa <[nghianc@ptsc.com.vn](mailto:nghianc@ptsc.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Bùi Lê Lương <[luongbl@ptsc.com.vn](mailto:luongbl@ptsc.com.vn)>; Nguyen Thanh Hieu PTKT <[hieunt2@pvep.com.vn](mailto:hieunt2@pvep.com.vn)>; Lê Minh Kha <[khalm.cd@vietsov.com.vn](mailto:khalm.cd@vietsov.com.vn)>; Le Tung Son <[sonlt3@pvep.com.vn](mailto:sonlt3@pvep.com.vn)>; Võ Việt Hải <[haivv.rd@vietsov.com.vn](mailto:haivv.rd@vietsov.com.vn)>; Nguyen Khac Hung <[hungnk@pvep.com.vn](mailto:hungnk@pvep.com.vn)>  
**Subject:** RE: KMDD - SHWT Load Increase

 

**_LƯU Ý_** _: Đây là EMAIL BÊN NGOÀI!!! KHÔNG “BẤM/MỞ” các liên kết hoặc tệp đính kèm trừ khi bạn chắc chắn về người gửi thư và bạn đang mong đợi thông tin liên lạc này và biết rằng nội dung đó an toàn.__  
_Nếu thấy thư  này đáng ngờ, hãy chuyển thư này tới bộ phận hỗ trợ [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)_  
_**ВНИМАНИЕ**_ _: ЭТО ВНЕШНЕЕ ПИСЬМО!!! НЕ НАЖИМАЙТЕ и НЕ ОТКРЫВАЙТЕ ссылки или вложения, если вы не уверены в отправителе, ожидаете это письмо и знаете, что его содержимое безопасно._  
_Сообщение кажется подозрительным? Отправьте на адрес  [itsupport@vietsov.com.vn](mailto:itsupport@vietsov.com.vn)__  
---  
  
 

Dear Mr. Sơn,

 

Kindly find attached the DD-WHP 24VDC Load List for your review.

 

As advised, the continuous 24-hour operation of the HVAC system during platform operation has been considered in this load list calculation. The 8-hour operation basis is currently the FEED assumption and needs to be further validated.

 

With this update, the overall SHWT system capacity is increased by **approximately 33% compared with the FEED basis**. Please note that this figure does **not include the ICSS load** , for which the draft power consumption calculation is also attached for reference.

 

The HVAC sizing calculation will be sent tomorrow morning.

 

Could you please arrange a meeting tomorrow morning to discuss this topic? PMC will be available at 9:00 AM.

 

Best regards,

Mạnh
---
**Links:** [[Lê Văn Giang]] | [[Nguyen Dinh Manh]] | [[Võ Việt Hải]] | [[Đào Đức Quang]] | [[Nguyễn Văn Đác]] | [[Nguyễn Hải Sơn]] | [[Nguyễn Thị Lan Phương]] | [[Bùi Quốc Huy]] | [[Phạm Văn Hải]] | [[KMDD]] | [[email]]