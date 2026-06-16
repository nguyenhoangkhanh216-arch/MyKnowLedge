---
title: "RE: [Ext] RE: KMDD - External Process Weekly Meeting - 04Jun26"
date: 2026-06-05
time: "09:19"
from: "Nguyen Tuan Son <sonnt2@pvep.com.vn>"
to: "Nguyễn Ngọc Công; Nguyen Thanh Hieu PTKT; Nguyen Duy Phan"
folder: "KMDD"
tags: [email]
attachments: [
  - "image001.png"
  - "image002.jpg"
]
---

# RE: [Ext] RE: KMDD - External Process Weekly Meeting - 04Jun26

**From:** Nguyen Tuan Son <sonnt2@pvep.com.vn>
**To:** Nguyễn Ngọc Công; Nguyen Thanh Hieu PTKT; Nguyen Duy Phan
**Date:** 2026-06-05 09:19
**Attachments:** image001.png, image002.jpg  

---

**CAUTION: This email originated from outside your organization. Exercise caution when opening attachments or on clicking links from unknown senders.**   


Dear Công,

 

Pls see our operation team comment (red text) and update accordingly.

 

_Thanks & Best regards,_

Nguyễn Tuấn Sơn (Mr.) | PVEP KM

HP: 0936.514.049 | Email: [sonnt2@pvep.com.vn](mailto:sonnt2@pvep.com.vn)

 

**From:** Nguyễn Ngọc Công <congnn@ptsc.com.vn>   
**Sent:** Friday, June 5, 2026 8:24 AM  
**To:** Trương Minh Hoàng <hoangmtruong@ptsc.com.vn>; Nguyen Tuan Son <sonnt2@pvep.com.vn>; Tran Minh Tri <tritm1@pvep.com.vn>  
**Cc:** Nguyễn Minh Hoàng <hoangnm1@ptsc.com.vn>; Nguyễn Hữu Thịnh <thinhnh@ptsc.com.vn>; Ngô Tân Hiếu EC000009 <hieunt6@ptsc.com.vn>; Hoàng Lê Khoa <khoahl1@ptsc.com.vn>; Nguyễn Hồng Quân <Quannh2@ptsc.com.vn>; Phan Văn Thảo <thaopv@ptsc.com.vn>; trungnt.pt@vietsov.com.vn; Nguyen Dinh Manh <manhnd1@ptsc.com.vn>; Nguyễn Văn Tây <taynguyen@ptsc.com.vn>; Nguyễn Hoàng Khánh <khanhnh@ptsc.com.vn>; Nguyễn Hải Nam NV <namnh3@ptsc.com.vn>; Nguyen Khac Hung <hungnk@pvep.com.vn>; Nguyen Thanh Hieu PTKT <hieunt2@pvep.com.vn>; Nguyễn Ngọc Công <congnn@ptsc.com.vn>  
**Subject:** [Ext] RE: KMDD - External Process Weekly Meeting - 04Jun26

 

**Dear A Sơn & A Trí,**

** **

As discussed in yesterday’s weekly meeting, PMC would like to highlight the concern related design flowrate for PCV(s) of Nitrogen System as below.

  * The current design flowrate for the PCVs has been estimated based on the existing 2inch line size supply header under actual operating conditions. 
  * However, there is no dedicated instrumentation for throttling or restricting the flowrate during purging/ pressurization operations. Therefore, in the event of operator error during maintenance activities or PCV mal-function, the nitrogen inventory could be rapidly depleted, resulting in complete release of the N₂ supply within approximately 12 minutes and consequently rendering the N₂ system unavailable for further use. Please refer to summary table below for more details.



 

**Platform** |  **Rack No.** |  **Purpose** |  **PCV Tag.** |  **Number of N2 Bottles** |  **Estimated N2 Volume** |  **Total N2 available** |  **Total required N2 volume purging/ pressurization (incl 30% margin)** |  **Current Design** |  **Proposed Design**  
---|---|---|---|---|---|---|---|---|---  
**Design Flowrate for PCV** |  **Total duration time for complete depletion** |  **Total duration time for purging/ pressurization** |  **Design Flowrate for PCV** |  **Total duration time for complete depletion** |  **Total duration time for purging/ pressurization**  
  |    |    |    |  Nos. |  Sm3 |  Sm3 |  Sm3 |  kg/hr |  Sm3/hr |  mins |  - |  Sm3/hr |  mins |  -  
DD-WHP |  Z-5620A/B |  Purging |  PCV-5622 |  32 |  10 |  320 |  955 |  1908 |  1610 |  **11.93** |  0.59 hrs |  **200** |  96.00 |  4.8 hrs (Maximum 3 hrs)  
Z-5620C |  Fusible Plug Loop |  PCV-5623 |  16 |  10 |  160 |  N/A |  1908 |  1610 |  **5.96** |  N/A |  **200** |  48.00 |  N/A  
Z-5620D |  Pressurization |  PCV-5624 |  16 |  10 |  160 |  682 |  8304 |  7009 |  **1.37** |  0.1 hr |  **200** |  48.00 |  3.41 hrs (Maximum 1 hrs)  
  
 

**Platform** |  **Rack No.** |  **Purpose** |  **PCV Tag.** |  **Number of N2 Bottles** |  **Estimated N2 Volume** |  **Total N2 available** |  **Total required N2 volume purging/ pressurization (incl 30% margin)** |  **Current Design** |  **Proposed Design**  
---|---|---|---|---|---|---|---|---|---  
**Design Flowrate for PCV** |  **Total duration time for complete depletion** |  **Total duration time for purging/ pressurization** |  **Design Flowrate for PCV** |  **Total duration time for complete depletion** |  **Total duration time for purging/ pressurization**  
  |    |    |    |  Nos. |  Sm3 |  Sm3 |  Sm3 |  kg/hr |  Sm3/hr |  mins |  - |  Sm3/hr |  mins |  -  
KM-WHP |  Z-5610A/B |  Purging |  PCV-5602 |  32 |  10 |  320 |  620 |  1908 |  1610 |  **11.93** |  0.39 hrs |  **200** |  96.00 |  3.1 hrs (Maximum 3 hrs)  
Z-5610C |  Fusible Plug Loop |  PCV-5603 |  16 |  10 |  160 |  N/A |  1908 |  1610 |  **5.96** |  N/A |  **200** |  48.00 |  N/A  
Z-5610D |  Pressurization |  PCV-XXXX |  16 |  10 |  160 |  378 |  11017 |  8299 |  **1.16** |  2.73 mins |  **200** |  48.00 |  1.89 hrs (Maximum 1 hrs)  
  
 

Based on the above findings, PMC proposes to revise the PCV design flowrate to a more practical purging/ pressurization rate of **200 Sm³/hr** , which is considered adequate for operational requirements while preventing excessive nitrogen consumption.

 

COMPANY kindly review and advise the PMC’s proposal for design flowrate of PCVs for further action.

 

\-------------------------------------

**_Thanks and Best Regards_****!******

 

|  **Nguyen Ngoc _Cong_ (Mr.)**  
---|---  
Process Team - Engineering Department  
PTSC Mechanical & Construction Co., Ltd   
**Phone / WhatsApp:** (+84) 969753931  
  
 

 

**From:** Trương Minh Hoàng <[hoangmtruong@ptsc.com.vn](mailto:hoangmtruong@ptsc.com.vn)>   
**Sent:** Thursday, June 4, 2026 6:06 PM  
**To:** [sonnt2@pvep.com.vn](mailto:sonnt2@pvep.com.vn); [ tritm1@pvep.com.vn](mailto:tritm1@pvep.com.vn)  
**Cc:** Nguyễn Ngọc Công <[congnn@ptsc.com.vn](mailto:congnn@ptsc.com.vn)>; Nguyễn Minh Hoàng <[hoangnm1@ptsc.com.vn](mailto:hoangnm1@ptsc.com.vn)>; Nguyễn Hữu Thịnh <[thinhnh@ptsc.com.vn](mailto:thinhnh@ptsc.com.vn)>; Ngô Tân Hiếu EC000009 <[hieunt6@ptsc.com.vn](mailto:hieunt6@ptsc.com.vn)>; Hoàng Lê Khoa <[khoahl1@ptsc.com.vn](mailto:khoahl1@ptsc.com.vn)>; Nguyễn Hồng Quân <[Quannh2@ptsc.com.vn](mailto:Quannh2@ptsc.com.vn)>; Phan Văn Thảo <[thaopv@ptsc.com.vn](mailto:thaopv@ptsc.com.vn)>; [trungnt.pt@vietsov.com.vn](mailto:trungnt.pt@vietsov.com.vn); Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Nguyễn Hoàng Khánh <[khanhnh@ptsc.com.vn](mailto:khanhnh@ptsc.com.vn)>; Nguyễn Hải Nam NV <[namnh3@ptsc.com.vn](mailto:namnh3@ptsc.com.vn)>; Nguyen Khac Hung <[hungnk@pvep.com.vn](mailto:hungnk@pvep.com.vn)>; [hieunt2@pvep.com.vn](mailto:hieunt2@pvep.com.vn)  
**Subject:** RE: KMDD - External Process Weekly Meeting - 04Jun26

 

Dear anh Sơn/ Trí,

 

Kindly find attached the MOM for meeting on 04 Jun 26. Please feedback your comments (if any) for updating and sign for collection.

 

 

Thanks & Best Regards,

**Truong Minh _Hoang_ (Mr.)**

 

Process Team – Engineering Department

PTSC Mechanical & Contruction Co., Ltd.

Office :  No. 65A, 30/4 Street, Rach Dua Ward, Ho Chi Minh City, Vietnam.

Mobile/Whatsapp :  +84 972 705 225 / +84 394 251 108

MS Teams :  hoangh5

Email :  [hoangmtruong@ptsc.com.vn](mailto:hoangmtruong@ptsc.com.vn)

[](https://profiles.dunsregistered.com/DunsRegisteredProfileAnywhere.aspx?key1=3109628&PaArea=mail)

 

\-----Original Appointment-----  
**From:** Trương Minh Hoàng   
**Sent:** Wednesday, June 3, 2026 9:51 PM  
**To:** 'sonnt2@pvep.com.vn'; 'tritm1@pvep.com.vn'; Nguyễn Ngọc Công; Nguyễn Minh Hoàng; Nguyễn Hữu Thịnh; Ngô Tân Hiếu EC000009; Hoàng Lê Khoa; Nguyễn Hồng Quân; Phan Văn Thảo; 'trungnt.pt@vietsov.com.vn'  
**Subject:** KMDD - External Process Weekly Meeting - 04Jun26  
**When:** Thursday, June 4, 2026 8:30 AM-10:00 AM (UTC+07:00) Bangkok, Hanoi, Jakarta.  
**Where:** Meeting Room 3.17

 

Dear team,

 

Kindly be invited to KMDD-External Process Weekly Meeting with time and venue as below:

 

Time: 08:30 – 10:00AM, Thursday 04-Jun-26

Venue: Meeting Room 3.17 (or via MS Teams)

 

Link MS Teams: 

[https://teams.microsoft.com/meet/4619546666404?p=eniajmcITfmGDHZEB0](https://teams.microsoft.com/meet/4619546666404?p=eniajmcITfmGDHZEB0)

 

 

Thanks & Best Regards,

**Truong Minh _Hoang_ (Mr.)**

 

Process Team – Engineering Department

PTSC Mechanical & Contruction Co., Ltd.

Office :  No. 65A, 30/4 Street, Rach Dua Ward, Ho Chi Minh City, Vietnam.

Mobile/Whatsapp :  +84 972 705 225 / +84 394 251 108

MS Teams :  hoangh5

Email :  [hoangmtruong@ptsc.com.vn](mailto:hoangmtruong@ptsc.com.vn)

[](https://profiles.dunsregistered.com/DunsRegisteredProfileAnywhere.aspx?key1=3109628&PaArea=mail)

____________________________________________  
**From:** Trương Minh Hoàng   
**Sent:** Thursday, May 28, 2026 5:06 PM  
**To:** 'sonnt2@pvep.com.vn' <[sonnt2@pvep.com.vn](mailto:sonnt2@pvep.com.vn)>; 'tritm1@pvep.com.vn' <[tritm1@pvep.com.vn](mailto:tritm1@pvep.com.vn)>  
**Cc:** Nguyễn Ngọc Công <[congnn@ptsc.com.vn](mailto:congnn@ptsc.com.vn)>; Nguyễn Minh Hoàng <[hoangnm1@ptsc.com.vn](mailto:hoangnm1@ptsc.com.vn)>; Nguyễn Hữu Thịnh <[thinhnh@ptsc.com.vn](mailto:thinhnh@ptsc.com.vn)>; Ngô Tân Hiếu EC000009 <[hieunt6@ptsc.com.vn](mailto:hieunt6@ptsc.com.vn)>; Hoàng Lê Khoa <[khoahl1@ptsc.com.vn](mailto:khoahl1@ptsc.com.vn)>; Nguyễn Hồng Quân <[Quannh2@ptsc.com.vn](mailto:Quannh2@ptsc.com.vn)>; Phan Văn Thảo <[thaopv@ptsc.com.vn](mailto:thaopv@ptsc.com.vn)>; 'trungnt.pt@vietsov.com.vn' <[trungnt.pt@vietsov.com.vn](mailto:trungnt.pt@vietsov.com.vn)>; Nguyen Dinh Manh <[manhnd1@ptsc.com.vn](mailto:manhnd1@ptsc.com.vn)>; Nguyễn Văn Tây <[taynguyen@ptsc.com.vn](mailto:taynguyen@ptsc.com.vn)>; Nguyễn Hoàng Khánh <[khanhnh@ptsc.com.vn](mailto:khanhnh@ptsc.com.vn)>; Nguyễn Hải Nam NV <[namnh3@ptsc.com.vn](mailto:namnh3@ptsc.com.vn)>; Nguyen Khac Hung <[hungnk@pvep.com.vn](mailto:hungnk@pvep.com.vn)>; 'hieunt2@pvep.com.vn' <[hieunt2@pvep.com.vn](mailto:hieunt2@pvep.com.vn)>  
**Subject:** RE: KMDD - External Process Weekly Meeting - 28May26

 

Dear anh Sơn/ Trí,

 

Kindly find attached the MOM for meeting on 28 May 26. Please feedback your comments (if any) for updating and sign for collection.

 

 

Thanks & Best Regards,

**Truong Minh _Hoang_ (Mr.)**

 

Process Team – Engineering Department

PTSC Mechanical & Contruction Co., Ltd.

Office :  No. 65A, 30/4 Street, Rach Dua Ward, Ho Chi Minh City, Vietnam.

Mobile/Whatsapp :  +84 972 705 225 / +84 394 251 108

MS Teams :  hoangh5

Email :  [hoangmtruong@ptsc.com.vn](mailto:hoangmtruong@ptsc.com.vn)

[](https://profiles.dunsregistered.com/DunsRegisteredProfileAnywhere.aspx?key1=3109628&PaArea=mail)

 

\-----Original Appointment-----  
**From:** Trương Minh Hoàng   
**Sent:** Wednesday, May 27, 2026 4:44 PM  
**To:** 'sonnt2@pvep.com.vn'; 'tritm1@pvep.com.vn'; Nguyễn Ngọc Công; Nguyễn Minh Hoàng; Nguyễn Hữu Thịnh; Ngô Tân Hiếu EC000009; Hoàng Lê Khoa; Nguyễn Hồng Quân; Phan Văn Thảo; 'trungnt.pt@vietsov.com.vn'  
**Subject:** KMDD - External Process Weekly Meeting - 28May26  
**When:** Thursday, May 28, 2026 8:30 AM-10:00 AM (UTC+07:00) Bangkok, Hanoi, Jakarta.  
**Where:** Meeting Room 3.17

 

Dear team,

 

Kindly be invited to KMDD-External Process Weekly Meeting with time and venue as below:

 

Time: 08:30 – 10:00AM, Thursday 28-May-26

Venue: Meeting Room 3.17 (or via MS Teams)

 

Link MS Teams: 

[https://teams.microsoft.com/meet/4619546666404?p=eniajmcITfmGDHZEB0](https://teams.microsoft.com/meet/4619546666404?p=eniajmcITfmGDHZEB0)

 

 

Thanks & Best Regards,

**Truong Minh _Hoang_ (Mr.)**

 

Process Team – Engineering Department

PTSC Mechanical & Contruction Co., Ltd.

Office :  No. 65A, 30/4 Street, Rach Dua Ward, Ho Chi Minh City, Vietnam.

Mobile/Whatsapp :  +84 972 705 225 / +84 394 251 108

MS Teams :  hoangh5

Email :  [hoangmtruong@ptsc.com.vn](mailto:hoangmtruong@ptsc.com.vn)

[](https://profiles.dunsregistered.com/DunsRegisteredProfileAnywhere.aspx?key1=3109628&PaArea=mail)
---
**Links:** [[Nguyen Tuan Son]] | [[Nguyễn Ngọc Công]] | [[Nguyen Thanh Hieu Ptkt]] | [[Nguyen Duy Phan]] | [[KMDD]] | [[email]]