package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import androidx.annotation.Keep;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;
import t1.b;

@Keep
public class FlightSchema
  implements Serializable
{
  public static final int CATEGORY_INLAND_TO_INLAND = 0;
  public static final int CATEGORY_INLAND_TO_INTER = 1;
  public static final int CATEGORY_INLAND_TO_REGION = 2;
  public static final int CATEGORY_INTER_TO_INTER = 4;
  public static final int CATEGORY_REGION_TO_INTER = 3;
  public static final int CATEGORY_UNKNOWN = 5;
  public static final int CHECK_IN_STATUS_CANCEL = 2;
  public static final int CHECK_IN_STATUS_DONE = 1;
  public static final int CHECK_IN_STATUS_DONE_AGAIN = 3;
  private static final String[] CHINESE_AIRPORT_CODE_ARRAY = { "PEK", "CGQ", "CSX", "CTU", "CKG", "DLC", "FOC", "CAN", "KWE", "HAK", "XNT", "YLN", "YUA", "XIN", "HGH", "HRB", "HET", "TNA", "KMG", "KHN", "NKG", "NNG", "TAO", "SYX", "PVG", "SHA", "SHE", "SZX", "SJW", "TYN", "TSN", "URC", "WNZ", "WUH", "XMN", "XIY", "CGO", "AKU", "AAT", "AXF", "RHT", "AVA", "AKA", "AQG", "AOG", "YIE", "AEB", "NBS", "BPX", "BSD", "BAV", "RLK", "BHY", "NAY", "BFU", "BFJ", "BPL", "KJI", "CGD", "CIH", "CZX", "CHG", "CIF", "JUH", "DLU", "DDG", "DCY", "DQA", "DAT", "DAX", "DYG", "DIG", "DSN", "DOY", "DNH", "EJN", "ENH", "ERL", "FUO", "FUG", "FYJ", "KOW", "GOQ", "GYS", "KWL", "GYU", "HLD", "HMI", "HDG", "HZG", "HFE", "HEK", "HPG", "HTN", "HIA", "HJJ", "HHA", "JGS", "JGD", "JMU", "JGN", "JIC", "JDZ", "JHG", "JNG", "JJN", "JNZ", "JIU", "JXA", "KJH", "KGT", "KRY", "KHG", "KRL", "KCA", "LHW", "ZGC", "LXA", "LYG", "LLB", "LJG", "LNJ", "LYI", "HZH", "LZH", "LCX", "LYA", "LZO", "LUM", "NZH", "MXZ", "MIG", "OHE", "MDG", "NAO", "LZN", "NTG", "NNY", "NGB", "LZY", "PZI", "JIQ", "IQM", "IQN", "SHP", "NDG", "JUZ", "SWA", "NGQ", "RKZ", "SYM", "JZH", "SZV", "TCG", "HYN", "TVS", "TCZ", "THQ", "TGO", "TEN", "TXN", "TLQ", "HLH", "WXN", "WEF", "WEH", "WNH", "WUA", "WUX", "WUS", "WUZ", "GXH", "SIA", "XFN", "XIC", "XIL", "ACX", "XNN", "NLT", "XUZ", "ENY", "YNZ", "YTY", "YNJ", "YNT", "YBP", "YIH", "LDS", "YIC", "INC", "YIN", "YIW", "LLF", "UYN", "YCU", "YUS", "ZQZ", "YZY", "ZHA", "ZAT", "ZHY", "HSN", "ZUH", "ZYI", "AYN", "CNI", "DZU", "FYN", "GHN", "LHK", "HNY", "ZMY", "HUZ", "KNC", "JIL", "CHW", "LZD", "LIA", "LXI", "PNJ", "RUG", "SHF", "SXJ", "SZO", "HSC", "SHS", "FUD", "TNH", "WHU", "XEN" };
  private static final String[] IRRELEVANT_WORDS_IN_AIRPORT;
  private static final String KEY_ARR_CITY = "FlightArr";
  private static final String KEY_DEP_CITY = "FlightDep";
  public static final int LOCATION_TYPE_INLAND = 0;
  public static final int LOCATION_TYPE_INTER = 1;
  public static final int LOCATION_TYPE_UNKNOWN = -1;
  private static final String STRING_AIRPORT = "机场";
  private static final String TAG = "Cal:D:FlightSchema";
  private static HashSet<String> sChineseAirportCodeSet;
  private static HashMap<String, String> sFlightCompanyTable;
  public String FlightArr;
  public String FlightArrAirport;
  public String FlightArrcode;
  public String FlightArrtimeDate;
  public String FlightArrtimePlanDate;
  public String FlightArrtimeReadyDate;
  public String FlightCompany;
  public String FlightDep;
  public String FlightDepAirport;
  public String FlightDepcode;
  public String FlightDeptimeDate;
  public String FlightDeptimePlanDate;
  public String FlightDeptimeReadyDate;
  public String FlightHTerminal;
  public String FlightNo;
  public String FlightState;
  public String FlightTerminal;
  public String alternate_info;
  public int dst_timezone;
  public int fcategory;
  public int org_timezone;
  
  static
  {
    HashMap localHashMap = new HashMap();
    sFlightCompanyTable = localHashMap;
    localHashMap.put("中国南方航空股份有限公司", "南方航空");
    sFlightCompanyTable.put("中国东方航空股份有限公司", "东方航空");
    sFlightCompanyTable.put("中国西南航空公司", "西南航空");
    sFlightCompanyTable.put("中国西北航空公司", "西北航空");
    sFlightCompanyTable.put("中国北方航空公司", "北方航空");
    sFlightCompanyTable.put("中国新疆航空公司", "新疆航空");
    sFlightCompanyTable.put("中国云南航空公司", "云南航空");
    sFlightCompanyTable.put("厦门航空有限公司", "厦门航空");
    sFlightCompanyTable.put("上海航空有限公司", "上海航空");
    sFlightCompanyTable.put("海南航空股份有限公司", "海南航空");
    sFlightCompanyTable.put("深圳航空有限责任公司", "深圳航空");
    sFlightCompanyTable.put("山东航空股份有限公司", "山东航空");
    sFlightCompanyTable.put("四川航空股份有限公司", "四川航空");
    sFlightCompanyTable.put("澳门航空股份有限公司", "澳门航空");
    sFlightCompanyTable.put("香港国泰航空有限公司", "国泰航空");
    sFlightCompanyTable.put("香港港龙航空有限公司", "港龙航空");
    sFlightCompanyTable.put("中华航空公司", "中华航空");
    sFlightCompanyTable.put("长荣航空股份有限公司", "长荣航空");
    sFlightCompanyTable.put("复兴航空运输股份有限公司", "复兴航空");
    sFlightCompanyTable.put("东星航空有限公司", "东星航空");
    sFlightCompanyTable.put("奥凯航空公司", "奥凯航空");
    sFlightCompanyTable.put("成都航空有限公司", "成都航空");
    sFlightCompanyTable.put("春秋航空有限公司", "春秋航空");
    sFlightCompanyTable.put("上海吉祥航空有限公司", "吉祥航空");
    sFlightCompanyTable.put("北京首都航空有限公司", "首都航空");
    sFlightCompanyTable.put("香港甘泉航空", "甘泉航空");
    sFlightCompanyTable.put("中国邮政航空公司", "邮政航空");
    sFlightCompanyTable.put("河北航空有限公司", "河北航空");
    sFlightCompanyTable.put("华夏航空有限公司", "华夏航空");
    sFlightCompanyTable.put("长城航空有限公司(货运)", "长城航空");
    sFlightCompanyTable.put("西部航空有限责任公司", "西部航空");
    sFlightCompanyTable.put("重庆航空有限责任公司", "重庆航空");
    sFlightCompanyTable.put("香港航空有限公司", "香港航空");
    sFlightCompanyTable.put("中国联合航空有限公司", "联合航空");
    sFlightCompanyTable.put("大新华航空有限公司", "大新华航空");
    sFlightCompanyTable.put("中信通用航空有限责任公司", "中信通用航空");
    sFlightCompanyTable.put("云南祥鹏航空有限责任公司", "祥鹏航空");
    sFlightCompanyTable.put("天津航空有限责任公司", "天津航空");
    sFlightCompanyTable.put("立荣航空公司", "立荣航空");
    sFlightCompanyTable.put("华信航空股份有限公司", "华信航空");
    sFlightCompanyTable.put("台湾德安航空公司", "台湾德安航空");
    sFlightCompanyTable.put("香港华民航空有限公司", "香港华民航空");
    sFlightCompanyTable.put("澳门非凡航空公司", "澳门非凡航空");
    sFlightCompanyTable.put("河南航空有限公司", "河南航空");
    sFlightCompanyTable.put("中国长城航空公司（客运）", "长城航空");
    sFlightCompanyTable.put("中原航空公司", "中原航空");
    sFlightCompanyTable.put("武汉航空公司", "武汉航空");
    sFlightCompanyTable.put("福建航空公司", "福建航空");
    sFlightCompanyTable.put("海南省航空公司", "海南省航空");
    sFlightCompanyTable.put("中国新华航空公司", "新华航空");
    sFlightCompanyTable.put("幸福航空有限责任公司", "幸福航空");
    sFlightCompanyTable.put("昆明航空有限公司", "昆明航空");
    sFlightCompanyTable.put("浙江航空公司", "浙江航空");
    sFlightCompanyTable.put("中国民航", "中国民航");
    sFlightCompanyTable.put("西藏航空", "西藏航空");
    sFlightCompanyTable.put("德国汉莎航空公司", "汉莎航空");
    sFlightCompanyTable.put("马来西亚亚洲航空公司", "亚洲航空");
    sChineseAirportCodeSet = new HashSet();
    IRRELEVANT_WORDS_IN_AIRPORT = new String[] { "有限", "股份", "责任", "公司" };
  }
  
  public static JSONObject getCorrectFlight(JSONArray paramJSONArray, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    int i = 0;
    try
    {
      while (i < paramJSONArray.length())
      {
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        String str1 = localJSONObject.getString("FlightDep");
        String str2 = localJSONObject.getString("FlightArr");
        boolean bool = TextUtils.equals(str1, paramString1);
        int j = 1;
        int k;
        if ((!bool) && ((TextUtils.isEmpty(paramString3)) || (!paramString3.contains(str1)))) {
          k = 0;
        } else {
          k = 1;
        }
        int m = j;
        if (!TextUtils.equals(str2, paramString2)) {
          if ((!TextUtils.isEmpty(paramString4)) && (paramString4.contains(str2))) {
            m = j;
          } else {
            m = 0;
          }
        }
        if ((k != 0) && (m != 0))
        {
          paramJSONArray = new java/lang/StringBuilder;
          paramJSONArray.<init>();
          paramJSONArray.append("getCorrectFlight(): index:");
          paramJSONArray.append(i);
          b.a("Cal:D:FlightSchema", paramJSONArray.toString());
          return localJSONObject;
        }
        i++;
      }
      b.a("Cal:D:FlightSchema", "getCorrectFlight(): CAN NOT match any one, return array[0]");
      paramJSONArray = paramJSONArray.getJSONObject(0);
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      b.c("Cal:D:FlightSchema", "getCorrectFlight()", paramJSONArray);
    }
    return null;
  }
  
  private static void initAirportCodeSet()
  {
    if (sChineseAirportCodeSet.isEmpty()) {
      for (int i = 0;; i++)
      {
        String[] arrayOfString = CHINESE_AIRPORT_CODE_ARRAY;
        if (i >= arrayOfString.length) {
          break;
        }
        sChineseAirportCodeSet.add(arrayOfString[i]);
      }
    }
  }
  
  public void adjustData()
  {
    
    if (!TextUtils.equals(this.FlightDepAirport, this.FlightDep)) {
      this.FlightDepAirport = this.FlightDepAirport.replace(this.FlightDep, "");
    }
    if (!TextUtils.equals(this.FlightArrAirport, this.FlightArr)) {
      this.FlightArrAirport = this.FlightArrAirport.replace(this.FlightArr, "");
    }
    Object localObject;
    if (!this.FlightDepAirport.contains("机场"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.FlightDepAirport);
      ((StringBuilder)localObject).append("机场");
      this.FlightDepAirport = ((StringBuilder)localObject).toString();
    }
    if (!this.FlightArrAirport.contains("机场"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.FlightArrAirport);
      ((StringBuilder)localObject).append("机场");
      this.FlightArrAirport = ((StringBuilder)localObject).toString();
    }
    if (sFlightCompanyTable.containsKey(this.FlightCompany)) {
      this.FlightCompany = ((String)sFlightCompanyTable.get(this.FlightCompany));
    } else {
      for (int i = 0;; i++)
      {
        localObject = IRRELEVANT_WORDS_IN_AIRPORT;
        if (i >= localObject.length) {
          break;
        }
        this.FlightCompany = this.FlightCompany.replace(localObject[i], "");
      }
    }
  }
  
  public void adjustFlightSchema()
  {
    
    if (!TextUtils.equals(this.FlightDepAirport, this.FlightDep)) {
      this.FlightDepAirport = this.FlightDepAirport.replace(this.FlightDep, "");
    }
    if (!TextUtils.equals(this.FlightArrAirport, this.FlightArr)) {
      this.FlightArrAirport = this.FlightArrAirport.replace(this.FlightArr, "");
    }
    Object localObject;
    if (!this.FlightDepAirport.contains("机场"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.FlightDepAirport);
      ((StringBuilder)localObject).append("机场");
      this.FlightDepAirport = ((StringBuilder)localObject).toString();
    }
    if (!this.FlightArrAirport.contains("机场"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.FlightArrAirport);
      ((StringBuilder)localObject).append("机场");
      this.FlightArrAirport = ((StringBuilder)localObject).toString();
    }
    if (sFlightCompanyTable.containsKey(this.FlightCompany)) {
      this.FlightCompany = ((String)sFlightCompanyTable.get(this.FlightCompany));
    } else {
      for (int i = 0;; i++)
      {
        localObject = IRRELEVANT_WORDS_IN_AIRPORT;
        if (i >= localObject.length) {
          break;
        }
        this.FlightCompany = this.FlightCompany.replace(localObject[i], "");
      }
    }
  }
  
  public String getArrTime()
  {
    if (TextUtils.isEmpty(this.FlightArrtimeDate)) {
      return null;
    }
    return this.FlightArrtimeDate.split(" ")[1].substring(0, 5);
  }
  
  public String getDepTime()
  {
    if (TextUtils.isEmpty(this.FlightDeptimeDate)) {
      return null;
    }
    return this.FlightDeptimeDate.split(" ")[1].substring(0, 5);
  }
  
  public int getFlightArrType()
  {
    int i = this.fcategory;
    if (i == 0) {
      return 0;
    }
    if ((i != 4) && (i != 3))
    {
      if ((i != 1) && (i != 2)) {
        return -1;
      }
      initAirportCodeSet();
      if (sChineseAirportCodeSet.contains(this.FlightArrcode)) {
        return 0;
      }
    }
    return 1;
  }
  
  public int getFlightDepType()
  {
    int i = this.fcategory;
    if (i == 0) {
      return 0;
    }
    if ((i != 4) && (i != 3))
    {
      if ((i != 1) && (i != 2)) {
        return -1;
      }
      initAirportCodeSet();
      if (sChineseAirportCodeSet.contains(this.FlightDepcode)) {
        return 0;
      }
    }
    return 1;
  }
  
  public boolean isFlightSchemaValid()
  {
    int i = this.fcategory;
    if ((i >= 0) && (i <= 4) && (!TextUtils.isEmpty(this.FlightNo)) && (!TextUtils.isEmpty(this.FlightCompany)) && (!TextUtils.isEmpty(this.FlightDepcode)) && (!TextUtils.isEmpty(this.FlightArrcode)) && (!TextUtils.isEmpty(this.FlightDeptimePlanDate)) && (!TextUtils.isEmpty(this.FlightArrtimePlanDate)) && (!TextUtils.isEmpty(this.FlightDep)) && (!TextUtils.isEmpty(this.FlightArr)) && (!TextUtils.isEmpty(this.FlightDepAirport)) && (!TextUtils.isEmpty(this.FlightArrAirport))) {
      return true;
    }
    b.f("Cal:D:FlightSchema", "isFlightSchemaValid(): flight schema INVALID");
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.FlightSchema
 * JD-Core Version:    0.7.0.1
 */