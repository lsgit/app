//
//  Contacts.h
//  FindWC
//
//  Created by liushuai on 14/11/13.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#ifndef FindWC_Contacts_h
#define FindWC_Contacts_h
/*
 ·	找厕所
 •	 http://www.ohbaba.com/interface3/toilets_3?lon=116.33720065429688&cid=1348281&cos=0&lat=40.02896970166016&city=%E5%8C%97%E4%BA%AC
 •
 •
 ll			nsstring			40.0302461074219,116.343332724609
 places
 
 1，评分：
 给力
 http://www.ohbaba.com/interface3/rate_3?cid=1348281&cos=0&v=5&tid=62824
 
 不错
 http://www.ohbaba.com/interface3/rate_3?cid=1348281&cos=0&v=4&tid=62824
 
 一般
 http://www.ohbaba.com/interface3/rate_3?cid=1348281&cos=0&v=3&tid=62824
 
 差
 http://www.ohbaba.com/interface3/rate_3?cid=1348281&cos=0&v=2&tid=62824
 
 很差
 http://www.ohbaba.com/interface3/rate_3?cid=1348281&cos=0&v=1&tid=62824
 
 
 2，苍蝇指数：
 0只
 http://www.ohbaba.com/interface5/fly?cid=1348281&cos=0&v=0&tid=62824
 
 2只
 http://www.ohbaba.com/interface5/fly?cid=1348281&cos=0&v=2&tid=62824
 
 很多只
 http://www.ohbaba.com/interface5/fly?cid=1348281&cos=0&v=5&tid=62824
 
 3，手纸：
 有
 http://www.ohbaba.com/interface3/cp
 {"cos":"0","cid":"1348281","tid":"62824","p":"1"}
 
 没有
 http://www.ohbaba.com/interface3/cp
 {"cos":"0","cid":"1348281","tid":"62824","p":"0"}
 
 4，收费信息：
 http://www.ohbaba.com/interface3/cfee
 收费
 {"f":"1","cos":"0","cid":"1348281","tid":"62824"}
 免费
 {"f":"0","cos":"0","cid":"1348281","tid":"62824"}
 
 5，开放时间
 http://www.ohbaba.com/interface3/ctime
 全天开放
 {"cos":"0","cid":"1348281","tid":"62824","t":"全天开放"}
 
 某时段开放
 {"cos":"0","cid":"1348281","tid":"62824","t":"8:00-20:00"}
 "8:00-20:00”这个时间可以改
 
 6，拥挤程度：共五个1，2，3，4，5
 http://www.ohbaba.com/interface3/ccr
 没人
 {"c":"1","cos":"0","cid":"1348281","tid":"62824"}
 
 不挤
 {"c":"2","cos":"0","cid":"1348281","tid":"62824"}
 
 挤爆了
 {"c":"5","cos":"0","cid":"1348281","tid":"62824"}
 
 
 7，蹲位数量：
 http://www.ohbaba.com/interface3/cnv
 一男一女
 {"mn":"1","tid":"62824","fn":"1","cos":"0","cid":"1348281"}
 改mn，fn的key值
 
 8，无障碍设施
 http://www.ohbaba.com/interface3/cph
 有
 {"ph":"1","cos":"0","cid":"1348281","tid":"62824"}
 无
 {"ph":"0","cos":"0","cid":"1348281","tid":"62824"}
 
 
 */


#endif
