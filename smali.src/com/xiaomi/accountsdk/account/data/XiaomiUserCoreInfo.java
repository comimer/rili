package com.xiaomi.accountsdk.account.data;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class XiaomiUserCoreInfo
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final ArrayList<String> f;
  public final ArrayList<c> g;
  public final String h;
  public final Gender i;
  public final Calendar j;
  public final boolean k;
  public final String l;
  public final String m;
  public final String n;
  public final Education o;
  public final Income p;
  public final boolean q;
  public final String r;
  
  private XiaomiUserCoreInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, ArrayList<String> paramArrayList, ArrayList<c> paramArrayList1, String paramString6, Gender paramGender, Calendar paramCalendar, boolean paramBoolean1, String paramString7, String paramString8, String paramString9, Education paramEducation, Income paramIncome, boolean paramBoolean2, String paramString10)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramArrayList;
    this.g = paramArrayList1;
    this.h = paramString6;
    this.i = paramGender;
    this.j = paramCalendar;
    this.k = paramBoolean1;
    this.l = paramString7;
    this.m = paramString8;
    this.n = paramString9;
    this.o = paramEducation;
    this.p = paramIncome;
    this.q = paramBoolean2;
    this.r = paramString10;
  }
  
  private static boolean d(Map paramMap, String paramString, boolean paramBoolean)
  {
    if ((paramMap != null) && (!TextUtils.isEmpty(paramString)))
    {
      paramMap = paramMap.get(paramString);
      if ((paramMap instanceof Boolean)) {
        return ((Boolean)paramMap).booleanValue();
      }
    }
    return paramBoolean;
  }
  
  private static int e(Map paramMap, String paramString, int paramInt)
  {
    if ((paramMap != null) && (!TextUtils.isEmpty(paramString)))
    {
      paramMap = paramMap.get(paramString);
      if ((paramMap instanceof Integer)) {
        return ((Integer)paramMap).intValue();
      }
    }
    return paramInt;
  }
  
  private static String f(Map paramMap, String paramString)
  {
    if ((paramMap != null) && (!TextUtils.isEmpty(paramString)))
    {
      paramMap = paramMap.get(paramString);
      if ((paramMap instanceof String)) {
        return (String)paramMap;
      }
    }
    return null;
  }
  
  public static enum Education
  {
    public final String level;
    
    static
    {
      Education localEducation1 = new Education("MIDDLE_SCHOOL", 0, "junior");
      MIDDLE_SCHOOL = localEducation1;
      Education localEducation2 = new Education("PREP_SCHOOL", 1, "technical");
      PREP_SCHOOL = localEducation2;
      Education localEducation3 = new Education("HIGH_SCHOOL", 2, "senior");
      HIGH_SCHOOL = localEducation3;
      Education localEducation4 = new Education("VOCATIONAL_SCHOOL", 3, "college");
      VOCATIONAL_SCHOOL = localEducation4;
      Education localEducation5 = new Education("COLLEGE", 4, "bachelor");
      COLLEGE = localEducation5;
      Education localEducation6 = new Education("MASTER_DEGREE", 5, "master");
      MASTER_DEGREE = localEducation6;
      Education localEducation7 = new Education("DOCTOR_AND_ABOVE", 6, "doctor");
      DOCTOR_AND_ABOVE = localEducation7;
      $VALUES = new Education[] { localEducation1, localEducation2, localEducation3, localEducation4, localEducation5, localEducation6, localEducation7 };
    }
    
    private Education(String paramString)
    {
      this.level = paramString;
    }
    
    public static Education getEducationTypeByName(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        return null;
      }
      for (Education localEducation : values()) {
        if (localEducation.level.equals(paramString)) {
          return localEducation;
        }
      }
      return null;
    }
  }
  
  public static enum Flag
  {
    public final int value;
    
    static
    {
      Flag localFlag1 = new Flag("BASE_INFO", 0, 1);
      BASE_INFO = localFlag1;
      Flag localFlag2 = new Flag("BIND_ADDRESS", 1, 2);
      BIND_ADDRESS = localFlag2;
      Flag localFlag3 = new Flag("EXTRA_INFO", 2, 4);
      EXTRA_INFO = localFlag3;
      Flag localFlag4 = new Flag("SETTING_INFO", 3, 8);
      SETTING_INFO = localFlag4;
      Flag localFlag5 = new Flag("SECURITY_STATUS", 4, 16);
      SECURITY_STATUS = localFlag5;
      Flag localFlag6 = new Flag("FAMILY_INFO", 5, 32);
      FAMILY_INFO = localFlag6;
      $VALUES = new Flag[] { localFlag1, localFlag2, localFlag3, localFlag4, localFlag5, localFlag6 };
    }
    
    private Flag(int paramInt)
    {
      this.value = paramInt;
    }
  }
  
  public static enum Income
  {
    public final String level;
    
    static
    {
      Income localIncome1 = new Income("LESS_2K", 0, "less2000");
      LESS_2K = localIncome1;
      Income localIncome2 = new Income("BETWEEN_2K_4K", 1, "less4000");
      BETWEEN_2K_4K = localIncome2;
      Income localIncome3 = new Income("BETWEEN_4K_6K", 2, "less6000");
      BETWEEN_4K_6K = localIncome3;
      Income localIncome4 = new Income("BETWEEN_6K_8K", 3, "less8000");
      BETWEEN_6K_8K = localIncome4;
      Income localIncome5 = new Income("BETWEEN_8K_12K", 4, "less12000");
      BETWEEN_8K_12K = localIncome5;
      Income localIncome6 = new Income("OVER_12K", 5, "over12000");
      OVER_12K = localIncome6;
      $VALUES = new Income[] { localIncome1, localIncome2, localIncome3, localIncome4, localIncome5, localIncome6 };
    }
    
    private Income(String paramString)
    {
      this.level = paramString;
    }
    
    public static Income getIncomeTypeByName(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        return null;
      }
      for (Income localIncome : values()) {
        if (localIncome.level.equals(paramString)) {
          return localIncome;
        }
      }
      return null;
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private ArrayList<String> f;
    private ArrayList<XiaomiUserCoreInfo.c> g;
    private String h;
    private Gender i;
    private Calendar j;
    private boolean k;
    private String l;
    private String m;
    private String n;
    private XiaomiUserCoreInfo.Education o;
    private XiaomiUserCoreInfo.Income p;
    private boolean q;
    private String r;
    
    public b(String paramString)
    {
      this.a = paramString;
    }
    
    public XiaomiUserCoreInfo a()
    {
      return new XiaomiUserCoreInfo(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, null);
    }
    
    public b b(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b c(Calendar paramCalendar)
    {
      this.j = paramCalendar;
      return this;
    }
    
    public b d(boolean paramBoolean)
    {
      this.q = paramBoolean;
      return this;
    }
    
    public b e(XiaomiUserCoreInfo.Education paramEducation)
    {
      this.o = paramEducation;
      return this;
    }
    
    public b f(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public void g(String paramString)
    {
      this.r = paramString;
    }
    
    public b h(Gender paramGender)
    {
      this.i = paramGender;
      return this;
    }
    
    public b i(XiaomiUserCoreInfo.Income paramIncome)
    {
      this.p = paramIncome;
      return this;
    }
    
    public b j(boolean paramBoolean)
    {
      this.k = paramBoolean;
      return this;
    }
    
    public b k(String paramString)
    {
      this.l = paramString;
      return this;
    }
    
    public b l(String paramString)
    {
      this.n = paramString;
      return this;
    }
    
    @Deprecated
    public b m(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b n(ArrayList<String> paramArrayList)
    {
      this.f = paramArrayList;
      return this;
    }
    
    public b o(String paramString)
    {
      this.m = paramString;
      return this;
    }
    
    public b p(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public void q(ArrayList<XiaomiUserCoreInfo.c> paramArrayList)
    {
      this.g = paramArrayList;
    }
    
    public b r(String paramString)
    {
      this.b = paramString;
      return this;
    }
  }
  
  public static class c
  {
    private final int a;
    private final String b;
    private final String c;
    private final String d;
    private boolean e;
    
    public c(int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
    {
      this.a = paramInt;
      this.b = paramString1;
      this.c = paramString2;
      this.d = paramString3;
      this.e = paramBoolean;
    }
    
    public static c a(Map paramMap)
    {
      return new c(XiaomiUserCoreInfo.a(paramMap, "snsType", 0), XiaomiUserCoreInfo.b(paramMap, "snsTypeName"), XiaomiUserCoreInfo.b(paramMap, "snsNickName"), XiaomiUserCoreInfo.b(paramMap, "snsIcon"), XiaomiUserCoreInfo.c(paramMap, "allowUnbind", true));
    }
    
    public static ArrayList<c> b(List paramList)
    {
      ArrayList localArrayList = new ArrayList();
      if (paramList != null)
      {
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          Object localObject = paramList.next();
          if ((localObject instanceof Map)) {
            localArrayList.add(a((Map)localObject));
          }
        }
      }
      return localArrayList;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo
 * JD-Core Version:    0.7.0.1
 */