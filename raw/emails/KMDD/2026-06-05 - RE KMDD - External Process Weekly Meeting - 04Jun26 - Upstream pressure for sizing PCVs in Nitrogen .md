---
title: "RE: KMDD - External Process Weekly Meeting - 04Jun26 - Upstream pressure for sizing PCVs in Nitrogen Supply Headers"
date: 2026-06-05
time: "07:51"
from: "Trương Minh Hoàng </O=PTSC EXCHANGE SYSTEM/OU=EXCHANGE ADMINISTRATIVE GROUP (FYDIBOHF23SPDLT)/CN=RECIPIENTS/CN=USERD01DFF8C>"
to: "sonnt2@pvep.com.vn; tritm1@pvep.com.vn"
folder: "KMDD"
tags: [email]
attachments: [
  - "image001.jpg"
  - "image002.jpg"
  - "image003.jpg"
  - "Attachment A - PCV-5602 & 5603, PSV-5601 & 5602.zip"
  - "Attachment B - PCV-XXXX, PSV-5603.zip"
]
---

# RE: KMDD - External Process Weekly Meeting - 04Jun26 - Upstream pressure for sizing PCVs in Nitrogen Supply Headers

**From:** Trương Minh Hoàng </O=PTSC EXCHANGE SYSTEM/OU=EXCHANGE ADMINISTRATIVE GROUP (FYDIBOHF23SPDLT)/CN=RECIPIENTS/CN=USERD01DFF8C>
**To:** sonnt2@pvep.com.vn; tritm1@pvep.com.vn
**Date:** 2026-06-05 07:51
**Attachments:** image001.jpg, image002.jpg, image003.jpg, Attachment A - PCV-5602 & 5603, PSV-5601 & 5602.zip, Attachment B - PCV-XXXX, PSV-5603.zip  

---

Dear anh Sơn/ Trí,

 

As discussed in yesterday’s meeting, the current design basis of PCV and PSV on N2 supply header are unreasonable and will result in impractical PCV/ PSV and associated inlet/ outlet piping size. It was agreed that a reasonable assumption shall be considered for sizing of PCVs and PSVs on N2 system. PMC would like to summarize the sizing results of several design cases below for your information/ consideration (the results are for N2 system on KM-WHP and typical for DD-WHP):

 

**_A. PCV-5602/5603 on N2 supply header from Rack A/B/C: Refer Attachment A_**

The utility flow diagram for Nitrogen Bottle Package (Z-5610A/B/C) and Nitrogen System as snapshot below:

 

 

There are several scenarios for PCV sizing & PSV sizing based on the various set pressure & design conditions as below:

 

**Scenario 1: PCV-5601A/B/C set @ 11 barg, DP = 1 bar is considered for PCV-5602/5603 sizing (current design)**

Overpressure Cause: PCV-5602/5603 fail-open.

Assumption: A latent leakage through PCV-5601A/B/C occurs, causing the pressure upstream of PCV-5602/5603 to equalize with the source pressure at 200 barg.

 

**Scenario 1**| **Mode**| **Upstream pressure, barg**| **Downstream pressure, barg**| **Flow, kg/hr**| **Calculated Cv (preliminary)**| **Rated Cv  
(preliminary)**| **Valve characteristic**  
---|---|---|---|---|---|---|---  
PCV-5601 A/B/C| Normal Operation| 200| 11| Inside Nitrogen Package  
PCV-5602/5603| Normal Operation| 11| 10| 1908| 19| 40| Linear  
Relief (Fail-open)| 200| 15.4| 137318| 40| 40| Linear  
PSV-5601/5602| Relief (Fail-open)| Orifice: **R**  
Inlet/Outlet line: **6 " / 18"**  
  
 

=> Results in the very high rated Cv for PCV-5602/5603 and oversized PSV-5601/5602 as well as inlet/ outlet piping size.

 

**Scenario 2: PCV-5601A/B/C set @ 30 barg, upstream pressure of 30 barg is considered for PCV-5602/5603 sizing**

Overpressure Cause: PCV-5602/5603 fail-open.

Assumption: A latent leakage through PCV-5601A/B/C occurs, causing the pressure upstream of PCV-5602/5603 to equalize with the source pressure at 200 barg.

 

**Scenario 2**| **Mode**| **Upstream pressure, barg**| **Downstream pressure, barg**| **Flow, kg/hr**| **Calculated Cv (preliminary)**| **Rated Cv  
(preliminary)**| **Valve characteristic**  
---|---|---|---|---|---|---|---  
PCV-5601 A/B/C| Normal Operation| 200| 30| Inside Nitrogen Package  
PCV-5602/5603| Normal Operation| 30| 10| 1908| 3.57| 7| Linear  
Relief (Fail-open)| 200| 15.4| 24031| 7| 7| Linear  
PSV-5601/5602| Relief (Fail-open)| Orifice: **L**  
Inlet/Outlet line: **3 " / 8"**  
  
 

=> Results in reasonable Cv for PCV-5602/5603, but still significant PSV-5601/5602 and associated inlet/ outlet piping size.

 

**Scenario 3: PCV-5601A/B/C @set 30 barg, upstream pressure of 30 barg is considered for PCV-5602/5603 sizing**

Overpressure Cause: PCV-5602/5603 fail-open.

Assumption: No latent leakage occurs through PCV-5601A/B/C. The upstream pressure of PCV-5602/5603 is maintained at its design setpoint of 30 barg by PCV-5601A/B/C

 

**Scenario 3**| **Mode**| **Upstream pressure, barg**| **Downstream pressure, barg**| **Flow, kg/hr**| **Calculated Cv (preliminary)**| **Rated Cv  
(preliminary)**| **Valve characteristic**  
---|---|---|---|---|---|---|---  
PCV-5601 A/B/C| Normal Operation| 200| 30| Inside Nitrogen Package  
PCV-5602/5603| Normal Operation| 30| 10| 1908| 3.57| 7| Linear  
Relief (Fail-open)| 30| 15.4| 3556.9| 7| 7| Linear  
PSV-5601/5602| Relief (Fail-open)| Orifice: **G**  
Inlet/Outlet line: **2 " / 3"**  
  
 

=> Results in reasonable Cv for PCV-5602/5603 and proper PSV-5601/5602 and inlet/outlet piping size

 

 

**_B. PCV-XXXX on N2 supply header from Rack D: Refer Attachment B_**

The utility flow diagram for Nitrogen Bottle Package (Z-5610D) and Nitrogen System as snapshot below:

 

 

There are several scenarios for PCV sizing & PSV sizing based on the various set pressure & design conditions as below:

 

**Scenario 1: PCV-5601D @set 66 barg,****DP = 1 bar is considered for PCV-XXXX sizing (current design)******

Overpressure Cause: PCV-XXXX fail-open.

Assumption: A latent leakage through PCV-5601D occurs, causing the pressure upstream of PCV-XXXX to equalize with the source pressure at 200 barg.

 

**Scenario 1**| **Mode**| **Upstream pressure, barg**| **Downstream pressure, barg**| **Flow, kg/hr**| **Calculated Cv (preliminary)**| **Rated Cv  
(preliminary)**| **Valve characteristic**  
---|---|---|---|---|---|---|---  
PCV-5601D| Normal Operation| 200| 66| Inside Nitrogen Package  
PCV-XXXX| Normal Operation| 66| 65| 11017| 45| 90| Linear  
Relief (Fail-open)| 200| 88| 295754| 90| 90| Linear  
PSV-5603| Relief (Fail-open)| Orifice: **P**  
Inlet/Outlet line: ** ****8 " / 26"**  
  
 

=> Results in the very high rated Cv for PCV-XXXX and oversized PSV-5603 as well as inlet/ outlet piping size.

 

**Scenario 2: PCV-5601D @set 89 barg,****upstream pressure of 89 barg is considered for PCV-XXXX sizing******

Overpressure Cause: PCV-XXXX fail-open.

Assumption: A latent leakage through PCV-5601D occurs, causing the pressure upstream of PCV-XXXX to equalize with the source pressure at 200 barg.****

 

**Scenario 2**| **Mode**| **Upstream pressure, barg**| **Downstream pressure, barg**| **Flow, kg/hr**| **Calculated Cv (preliminary)**| **Rated Cv  
(preliminary)**| **Valve characteristic**  
---|---|---|---|---|---|---|---  
PCV-5601D| Normal Operation| 200| 89| Inside Nitrogen Package  
PCV-XXXX| Normal Operation| 89| 65| 11017| 9| 18| Linear  
Relief (Fail-open)| 200| 88| 59151| 18| 18| Linear  
PSV-5603| Relief (Fail-open)| Orifice: **J**  
Inlet/Outlet line: **4 " / 12"**  
  
 

=> Results in reasonable Cv for PCV-XXXX, but still significant PSV-5603 and associated inlet/ outlet piping size.

 

**Scenario 3: PCV-5601 @set 89 barg,****upstream pressure of 89 barg is considered for PCV-XXXX sizing******

Overpressure Cause: PCV-XXXX fail-open.

Assumption: No latent leakage occurs through PCV-5601D. The upstream pressure of PCV-XXXX is maintained at its design setpoint of 89 barg by PCV-5601D.

 

**Scenario 3**| **Mode**| **Upstream pressure, barg**| **Downstream pressure, barg**| **Flow, kg/hr**| **Calculated Cv (preliminary)**| **Rated Cv  
(preliminary)**| **Valve characteristic**  
---|---|---|---|---|---|---|---  
PCV-5601D| Normal Operation| 200| 89| Inside Nitrogen Package  
PCV-XXXX| Normal Operation| 89| 65| 11017| 9| 18| Linear  
Relief (Fail-open)| 89| 88| 5051| 18| 18| Linear  
PSV-5603| Relief (Fail-open)| Orifice: **D**  
Inlet/Outlet line: **2 " / 4"**  
  
 

=> Results in reasonable Cv for PCV-XXXX and proper PSV-5603 and inlet/outlet piping size

 

 

Based on above sizing data, PMC propose to revise the sizing basis of PCVs and PSVs on N2 supply headers as below:

1.       Consider maximum setpoint of PCV-5601A/B/C (inside N2 Rack A/B/C) @ 30 barg; upstream pressure of PCV-5602/ 5603 at 30 barg shall be considered for PCV-5602/5603 and PSV-5601/ 5602 design.

2.       Consider maximum setpoint of PCV-5601D (inside N2 Rack D) @ 89 barg; upstream pressure of PCV-XXXX at 89 barg shall be considered for PCV-XXXX and PSV-5603 design.

 

COMPANY please check and feedback your opinion for further engineering and procurement execution.

 

 

Thanks & Best Regards,

**Truong Minh _Hoang_ (Mr.)**

 

Process Team – Engineering Department

PTSC Mechanical & Contruction Co., Ltd.

Office :  No. 65A, 30/4 Street, Rach Dua Ward, Ho Chi Minh City, Vietnam.

Mobile/Whatsapp :  +84 972 705 225 / +84 394 251 108

MS Teams :  hoangh5

Email :  [hoangmtruong@ptsc.com.vn](mailto:hoangmtruong@ptsc.com.vn)

[](https://profiles.dunsregistered.com/DunsRegisteredProfileAnywhere.aspx?key1=3109628&PaArea=mail)

 

**From:** Trương Minh Hoàng   
**Sent:** Thursday, June 4, 2026 6:05 PM  
**To:** 'sonnt2@pvep.com.vn' <sonnt2@pvep.com.vn>; 'tritm1@pvep.com.vn' <tritm1@pvep.com.vn>  
**Cc:** Nguyễn Ngọc Công <congnn@ptsc.com.vn>; Nguyễn Minh Hoàng <hoangnm1@ptsc.com.vn>; Nguyễn Hữu Thịnh <thinhnh@ptsc.com.vn>; Ngô Tân Hiếu EC000009 <hieunt6@ptsc.com.vn>; Hoàng Lê Khoa <khoahl1@ptsc.com.vn>; Nguyễn Hồng Quân <Quannh2@ptsc.com.vn>; Phan Văn Thảo <thaopv@ptsc.com.vn>; 'trungnt.pt@vietsov.com.vn' <trungnt.pt@vietsov.com.vn>; Nguyen Dinh Manh <manhnd1@ptsc.com.vn>; Nguyễn Văn Tây <taynguyen@ptsc.com.vn>; Nguyễn Hoàng Khánh <khanhnh@ptsc.com.vn>; Nguyễn Hải Nam NV <namnh3@ptsc.com.vn>; Nguyen Khac Hung <hungnk@pvep.com.vn>; 'hieunt2@pvep.com.vn' <hieunt2@pvep.com.vn>  
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
**Links:** [[Trương Minh Hoàng]] | [[KMDD]] | [[email]]