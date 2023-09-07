package com.miui.calendar.util;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.android.calendar.common.o;
import com.android.calendar.common.r;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public class a0
{
  private static final int[] a = { 771402, 8697535, 306771, 677704, 5580477, 861776, 890180, 4631225, 354893, 634178, 2404022, 306762, 6966718, 675154, 861510, 6116026, 742478, 879171, 2714935, 613195, 7642049, 300884, 674632, 5973436, 435536, 447557, 4905656, 177741, 612162, 2398135, 300874, 6703934, 870993, 959814, 5690554, 372046, 177732, 3749688, 601675, 8165055, 824659, 870984, 7185723, 742735, 354885, 4894137, 154957, 601410, 2921910, 693578, 8080061, 445009, 742726, 5593787, 318030, 678723, 3484600, 338764, 9082175, 955730, 436808, 7001404, 701775, 308805, 4871993, 677709, 337474, 4100917, 890185, 7711422, 354897, 617798, 5549755, 306511, 675139, 5056183, 861515, 9261759, 742482, 748103, 6909244, 613200, 301893, 4869049, 674637, 11216322, 435540, 447561, 7002685, 702033, 612166, 5543867, 300879, 412484, 3581239, 959818, 8827583, 371795, 702023, 5846716, 601680, 824901, 5065400, 870988, 894273, 2468534, 354889, 8039869, 154962, 601415, 6067642, 693582, 739907, 4937015, 709962, 9788095, 309843, 678728, 6630332, 338768, 693061, 4672185, 436812, 709953, 2415286, 308810, 6969149, 675409, 861766, 6198074, 873293, 371267, 3585335, 617803, 11841215, 306515, 675144, 7153084, 861519, 873028, 6138424, 744012, 355649, 2403766, 301898, 8014782, 674641, 697670, 5984954, 447054, 711234, 3496759, 603979, 8689601, 300883, 412488, 6726972, 959823, 436804, 4896312, 699980, 601666, 3970869, 824905, 8211133, 870993, 894277, 5614266, 354894, 683331, 4533943, 339275, 9082303, 693587, 739911, 7034171, 709967, 350789, 4873528, 678732, 338754, 3838902, 430921, 7809469, 436817, 709958, 5561018, 308814, 677699, 4532024, 861770, 9343806, 873042, 895559, 6731067, 355663, 306757, 4869817, 675148, 857409, 2986677 };
  private static final int[] b = { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 };
  private static int[] c = { 101, 115, 505, 707, 815, 909, 1208 };
  private static int[] d = { 101, 214, 308, 312, 401, 501, 504, 601, 701, 801, 910, 1001, 1225 };
  private static int[] e = { 101, 214, 501, 701, 1001, 1225 };
  private static int[] f;
  private static int[] g;
  private static int[] h;
  @SuppressLint({"UseSparseArrays"})
  private static final Map<Integer, String[]> i = new HashMap();
  private static final HashMap<Integer, Integer> j = new HashMap();
  
  static
  {
    q();
    r();
    s();
  }
  
  public static int[] d(int paramInt1, int paramInt2, int paramInt3)
  {
    Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    int k = 1899;
    localCalendar.set(1899, 1, 10);
    long l = localCalendar.getTimeInMillis();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    paramInt3 = (int)((localCalendar.getTimeInMillis() - l) / 86400000L);
    int m = 0;
    int n = 0;
    for (paramInt2 = k; (paramInt2 <= 2099) && (paramInt3 > 0); paramInt2++)
    {
      n = h(paramInt2);
      paramInt3 -= n;
    }
    k = paramInt2;
    paramInt1 = paramInt3;
    if (paramInt3 < 0)
    {
      paramInt1 = paramInt3 + n;
      k = paramInt2 - 1;
    }
    int i1 = v(k);
    int i2 = 0;
    for (paramInt2 = 1; (paramInt2 <= 13) && (paramInt1 > 0); paramInt2++)
    {
      i2 = g(k, paramInt2);
      paramInt1 -= i2;
    }
    paramInt3 = paramInt2;
    n = paramInt1;
    if (paramInt1 < 0)
    {
      n = paramInt1 + i2;
      paramInt3 = paramInt2 - 1;
    }
    paramInt2 = paramInt3;
    paramInt1 = m;
    if (i1 != 0)
    {
      paramInt2 = paramInt3;
      paramInt1 = m;
      if (paramInt3 > i1)
      {
        paramInt3--;
        paramInt2 = paramInt3;
        paramInt1 = m;
        if (paramInt3 == i1)
        {
          paramInt1 = 1;
          paramInt2 = paramInt3;
        }
      }
    }
    return new int[] { k, paramInt2, n + 1, paramInt1 };
  }
  
  private static boolean e(int paramInt)
  {
    boolean bool;
    if ((paramInt <= 2099) && (paramInt >= 1899)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static int f(int paramInt)
  {
    int k = v(paramInt);
    if ((k > 0) && (k <= 12)) {
      return j(paramInt, k, true);
    }
    return 0;
  }
  
  private static int g(int paramInt1, int paramInt2)
  {
    if (!e(paramInt1)) {
      return 0;
    }
    if ((a[(paramInt1 - 1899)] & 1048576 >> paramInt2) == 0) {
      return 29;
    }
    return 30;
  }
  
  private static int h(int paramInt)
  {
    if (!e(paramInt)) {
      return 0;
    }
    int k = 348;
    if (v(paramInt) != 0) {
      k = 377;
    }
    int m = a[(paramInt - 1899)];
    paramInt = 524288;
    for (int n = k; paramInt > 7; n = k)
    {
      k = n;
      if ((m & 0xFFF80 & paramInt) != 0) {
        k = n + 1;
      }
      paramInt >>= 1;
    }
    return n;
  }
  
  private static int i(int paramInt1, int paramInt2)
  {
    return j(paramInt1, paramInt2, false);
  }
  
  private static int j(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int k = v(paramInt1);
    int m;
    if ((k != 0) && (paramInt2 > k)) {
      m = 1;
    } else {
      m = 0;
    }
    if (!paramBoolean) {
      return g(paramInt1, paramInt2 + m);
    }
    if ((k != 0) && (k == paramInt2)) {
      return g(paramInt1, paramInt2 + 1);
    }
    return 0;
  }
  
  public static String k(Resources paramResources, int paramInt)
  {
    if (paramInt == 10) {
      return paramResources.getString(r.W);
    }
    if (paramInt == 20) {
      return paramResources.getString(r.Y);
    }
    if (paramInt == 30) {
      return paramResources.getString(r.f0);
    }
    int k = paramInt / 10;
    String str;
    if (k == 0) {
      str = paramResources.getString(r.V);
    } else {
      str = "";
    }
    if (k == 1) {
      str = paramResources.getString(r.g0);
    }
    if (k == 2) {
      str = paramResources.getString(r.c0);
    }
    if (k == 3) {
      str = paramResources.getString(r.e0);
    }
    StringBuilder localStringBuilder;
    switch (paramInt % 10)
    {
    default: 
      paramResources = str;
      break;
    case 9: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.Z));
      paramResources = localStringBuilder.toString();
      break;
    case 8: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.U));
      paramResources = localStringBuilder.toString();
      break;
    case 7: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.d0));
      paramResources = localStringBuilder.toString();
      break;
    case 6: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.b0));
      paramResources = localStringBuilder.toString();
      break;
    case 5: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.k0));
      paramResources = localStringBuilder.toString();
      break;
    case 4: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.j0));
      paramResources = localStringBuilder.toString();
      break;
    case 3: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.e0));
      paramResources = localStringBuilder.toString();
      break;
    case 2: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.X));
      paramResources = localStringBuilder.toString();
      break;
    case 1: 
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(paramResources.getString(r.m0));
      paramResources = localStringBuilder.toString();
    }
    return paramResources;
  }
  
  public static String l(Resources paramResources, Calendar paramCalendar)
  {
    paramCalendar = d(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
    try
    {
      paramResources = k(paramResources, paramCalendar[2]);
      return paramResources;
    }
    catch (Exception paramResources) {}
    return "";
  }
  
  public static String m(Resources paramResources, int paramInt1, int paramInt2, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramInt1 > 0)
    {
      localStringBuilder.append(Integer.toString(paramInt1));
      localStringBuilder.append(paramResources.getString(r.l0));
    }
    paramInt1 = paramInt2;
    if (paramInt2 >= 12)
    {
      localStringBuilder.append(paramResources.getString(r.a0));
      paramInt1 = paramInt2 - 12;
    }
    localStringBuilder.append(n(paramResources, paramInt1 + 1));
    localStringBuilder.append(paramResources.getString(r.n0));
    localStringBuilder.append(k(paramResources, paramInt3));
    return localStringBuilder.toString();
  }
  
  public static String n(Resources paramResources, int paramInt)
  {
    if (paramInt > 12) {
      return null;
    }
    switch (paramInt)
    {
    default: 
      return null;
    case 12: 
      return paramResources.getString(r.h0);
    case 11: 
      return paramResources.getString(r.i0);
    case 10: 
      return paramResources.getString(r.g0);
    case 9: 
      return paramResources.getString(r.Z);
    case 8: 
      return paramResources.getString(r.U);
    case 7: 
      return paramResources.getString(r.d0);
    case 6: 
      return paramResources.getString(r.b0);
    case 5: 
      return paramResources.getString(r.k0);
    case 4: 
      return paramResources.getString(r.j0);
    case 3: 
      return paramResources.getString(r.e0);
    case 2: 
      return paramResources.getString(r.X);
    case 1: 
      return paramResources.getString(r.o0);
    }
    return "";
  }
  
  public static String o(Resources paramResources, Calendar paramCalendar)
  {
    int k = paramCalendar.get(1);
    int m = paramCalendar.get(2) + 1;
    int n = paramCalendar.get(5);
    paramCalendar = i;
    if (!paramCalendar.containsKey(Integer.valueOf(k))) {
      paramCalendar.put(Integer.valueOf(k), q0.j(paramResources, k));
    }
    String[] arrayOfString = (String[])paramCalendar.get(Integer.valueOf(k));
    int i1 = 0;
    paramCalendar = new StringBuilder();
    if (m >= 10)
    {
      paramResources = String.valueOf(m);
    }
    else
    {
      paramResources = new StringBuilder();
      paramResources.append("0");
      paramResources.append(m);
      paramResources = paramResources.toString();
    }
    paramCalendar.append(paramResources);
    if (n >= 10)
    {
      paramResources = Integer.valueOf(n);
    }
    else
    {
      paramResources = new StringBuilder();
      paramResources.append("0");
      paramResources.append(n);
      paramResources = paramResources.toString();
    }
    paramCalendar.append(paramResources);
    String str = String.format("%s%s", new Object[] { Integer.valueOf(k), paramCalendar.toString() });
    paramCalendar = null;
    n = arrayOfString.length;
    for (;;)
    {
      paramResources = paramCalendar;
      if (i1 >= n) {
        break;
      }
      paramResources = arrayOfString[i1];
      if (paramResources.contains(str))
      {
        paramResources = paramResources.replace(str, "");
        break;
      }
      i1++;
    }
    return paramResources;
  }
  
  public static String p(Resources paramResources, Calendar paramCalendar)
  {
    return z(paramResources, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
  }
  
  private static void q()
  {
    if (Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
      f = new int[] { r.X0, r.R, r.P0, r.r, r.T0, r.N0, r.R0 };
    } else {
      f = new int[] { r.W0, r.Q, r.O0, r.q, r.S0, r.M0, r.Q0 };
    }
  }
  
  private static void r()
  {
    if (Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
      g = new int[] { r.s0, r.Z0, r.N, r.b, r.t, r.P, r.j, r.h, r.u0, r.L0, r.I0, r.q0, r.l };
    } else {
      g = new int[] { r.r0, r.Y0, r.M, r.a, r.s, r.O, r.i, r.g, r.t0, r.K0, r.H0, r.p0, r.k };
    }
  }
  
  private static void s()
  {
    if (Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
      h = new int[] { r.s0, r.Z0, r.P, r.H, r.q0, r.l };
    } else {
      h = new int[] { r.r0, r.Y0, r.O, r.G, r.p0, r.k };
    }
  }
  
  public static boolean t(Calendar paramCalendar)
  {
    boolean bool = true;
    if (d(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5))[2] != 1) {
      bool = false;
    }
    return bool;
  }
  
  public static boolean u(Calendar paramCalendar)
  {
    boolean bool = true;
    paramCalendar = d(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
    if ((paramCalendar[1] != 1) || (paramCalendar[2] != 1) || (paramCalendar[3] == 1)) {
      bool = false;
    }
    return bool;
  }
  
  public static int v(int paramInt)
  {
    if (!e(paramInt)) {
      return 0;
    }
    return (a[(paramInt - 1899)] & 0xF00000) >> 20;
  }
  
  public static int[] w(int paramInt1, int paramInt2, int paramInt3)
  {
    int[] arrayOfInt1 = new int[3];
    if (!e(paramInt1)) {
      return arrayOfInt1;
    }
    int k;
    int m;
    if (paramInt2 > 12)
    {
      k = paramInt2 - 12;
      m = 1;
    }
    else
    {
      m = 0;
      k = paramInt2;
    }
    if ((paramInt1 >= 1899) && (paramInt1 <= 2099) && (k >= 1) && (k <= 12) && (paramInt3 >= 1))
    {
      int n = 30;
      if (paramInt3 <= 30)
      {
        int[] arrayOfInt2 = a;
        int i1 = paramInt1 - 1899;
        int i2 = arrayOfInt2[i1];
        int i3 = (i2 & 0x1F) - 1;
        paramInt2 = i3;
        if ((i2 & 0x60) >> 5 == 2) {
          paramInt2 = i3 + 31;
        }
        i2 = (i2 & 0xF00000) >> 20;
        i3 = k;
        if (i2 != 0) {
          if (k <= i2)
          {
            i3 = k;
            if (m == 0) {}
          }
          else
          {
            i3 = k + 1;
          }
        }
        for (k = 1; k < i3; k++) {
          if ((524288 >> k - 1 & a[i1]) == 0) {
            paramInt2 += 29;
          } else {
            paramInt2 += 30;
          }
        }
        k = n;
        if ((524288 >> i3 - 1 & a[i1]) == 0) {
          k = 29;
        }
        k = paramInt2 + Math.min(k, paramInt3);
        if (k <= 366)
        {
          paramInt2 = k;
          paramInt3 = paramInt1;
          if (paramInt1 % 4 != 0)
          {
            paramInt2 = k;
            paramInt3 = paramInt1;
            if (k <= 365) {}
          }
        }
        else
        {
          paramInt3 = paramInt1 + 1;
          if (paramInt3 % 4 == 1) {
            paramInt2 = k - 366;
          } else {
            paramInt2 = k - 365;
          }
        }
        for (paramInt1 = 1; paramInt1 < 13; paramInt1++)
        {
          arrayOfInt2 = b;
          i3 = arrayOfInt2[paramInt1];
          m = paramInt3 % 4;
          k = i3;
          if (m == 0)
          {
            k = i3;
            if (paramInt1 > 2) {
              k = i3 + 1;
            }
          }
          if ((m == 0) && (paramInt1 == 2) && (k + 1 == paramInt2))
          {
            arrayOfInt1[1] = paramInt1;
            arrayOfInt1[2] = (paramInt2 - 31);
            break;
          }
          if (k >= paramInt2)
          {
            arrayOfInt1[1] = paramInt1;
            i3 = arrayOfInt2[(paramInt1 - 1)];
            if ((m == 0) && (paramInt1 > 2)) {
              k = i3 + 1;
            } else {
              k = i3;
            }
            if (paramInt2 > k)
            {
              arrayOfInt1[2] = (paramInt2 - k);
              break;
            }
            if (paramInt2 == k)
            {
              if ((m == 0) && (paramInt1 == 2))
              {
                arrayOfInt1[2] = (arrayOfInt2[paramInt1] - i3 + 1);
                break;
              }
              arrayOfInt1[2] = (arrayOfInt2[paramInt1] - i3);
              break;
            }
            arrayOfInt1[2] = paramInt2;
            break;
          }
        }
        arrayOfInt1[0] = paramInt3;
        return arrayOfInt1;
      }
    }
    Log.e("LunarDateUtil", "Illegal lunar date, must be like that:\n\tyear : 1900~2099\n\tmonth : 1~12\n\tday : 1~30");
    return arrayOfInt1;
  }
  
  public static int[] x(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    Object localObject = null;
    if (bool) {
      return null;
    }
    int[] arrayOfInt = new int[3];
    try
    {
      String[] arrayOfString = paramString.split("-");
      if (arrayOfString.length == 2)
      {
        arrayOfInt[0] = Integer.parseInt(arrayOfString[1].trim());
        arrayOfInt[1] = (Integer.parseInt(arrayOfString[0].trim()) - 1);
        arrayOfInt[2] = 0;
      }
      else if (arrayOfString.length == 3)
      {
        arrayOfInt[0] = Integer.parseInt(arrayOfString[2].trim());
        arrayOfInt[1] = (Integer.parseInt(arrayOfString[1].trim()) - 1);
        arrayOfInt[2] = Integer.parseInt(arrayOfString[0].trim());
      }
      else
      {
        paramString = localObject;
        if (arrayOfString.length != 4) {
          return paramString;
        }
        paramString = localObject;
        if (!TextUtils.isEmpty(arrayOfString[0])) {
          return paramString;
        }
        paramString = localObject;
        if (!TextUtils.isEmpty(arrayOfString[1])) {
          return paramString;
        }
        paramString = localObject;
        if (TextUtils.isEmpty(arrayOfString[2])) {
          return paramString;
        }
        paramString = localObject;
        if (TextUtils.isEmpty(arrayOfString[3])) {
          return paramString;
        }
        arrayOfInt[0] = Integer.parseInt(arrayOfString[3].trim());
        arrayOfInt[1] = (Integer.parseInt(arrayOfString[2].trim()) - 1);
        arrayOfInt[2] = 0;
      }
      paramString = arrayOfInt;
    }
    catch (NumberFormatException paramString)
    {
      paramString.printStackTrace();
      paramString = localObject;
    }
    return paramString;
  }
  
  public static void y()
  {
    Map localMap = i;
    if ((localMap != null) && (localMap.size() > 0)) {
      localMap.clear();
    }
    q();
    r();
    s();
  }
  
  public static String z(Resources paramResources, int paramInt1, int paramInt2, int paramInt3)
  {
    int[] arrayOfInt = d(paramInt1, paramInt2, paramInt3);
    StringBuffer localStringBuffer = new StringBuffer();
    if (arrayOfInt[3] == 1L) {}
    try
    {
      localStringBuffer.append(paramResources.getString(r.a0));
      localStringBuffer.append(n(paramResources, arrayOfInt[1]));
      localStringBuffer.append(paramResources.getString(r.n0));
      localStringBuffer.append(k(paramResources, arrayOfInt[2]));
      paramResources = localStringBuffer.toString();
      return paramResources;
    }
    finally {}
  }
  
  public static class a
  {
    private static final SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
    private static boolean g;
    private static String[] h;
    private static String[] i;
    private static String[] j;
    private static Calendar k;
    private static Date l;
    private Calendar a;
    private int b;
    private int c;
    private int d;
    private int e;
    
    public a(Calendar paramCalendar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.a = paramCalendar;
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
      this.e = paramInt4;
    }
    
    public static a b(Resources paramResources, Calendar paramCalendar)
    {
      try
      {
        boolean bool = g;
        int m = 1900;
        if (!bool)
        {
          h = paramResources.getStringArray(o.c);
          i = paramResources.getStringArray(o.a);
          j = paramResources.getStringArray(o.b);
          if (Build.VERSION.SDK_INT >= 28)
          {
            paramResources = Calendar.getInstance();
            k = paramResources;
            paramResources.set(1, 1900);
            k.set(2, 0);
            k.set(5, 31);
          }
          else
          {
            l = f.parse("1900-1-31");
          }
          g = true;
        }
        long l1;
        if (Build.VERSION.SDK_INT >= 28) {
          l1 = (paramCalendar.getTime().getTime() - k.getTimeInMillis()) / 86400000L;
        } else {
          l1 = (paramCalendar.getTime().getTime() - l.getTime()) / 86400000L;
        }
        int n = (int)l1;
        int i1 = 0;
        while ((m < 2050) && (n > 0))
        {
          i1 = a0.a(m);
          n -= i1;
          m++;
        }
        int i2 = m;
        int i3 = n;
        if (n < 0)
        {
          i3 = n + i1;
          i2 = m - 1;
        }
        int i4 = a0.v(i2);
        i1 = 0;
        int i5 = i1;
        m = 1;
        while ((m < 13) && (i3 > 0))
        {
          if ((i4 > 0) && (m == i4 + 1) && (i1 == 0))
          {
            m--;
            n = a0.b(i2);
            i1 = 1;
          }
          else
          {
            n = a0.c(i2, m);
          }
          int i6 = i3 - n;
          i3 = i1;
          if (i1 != 0)
          {
            i3 = i1;
            if (m == i4 + 1) {
              i3 = 0;
            }
          }
          m++;
          i1 = i3;
          i5 = n;
          i3 = i6;
        }
        n = m;
        if (i3 == 0)
        {
          n = m;
          if (i4 > 0)
          {
            n = m;
            if (m == i4 + 1) {
              if (i1 != 0) {
                n = m;
              } else {
                n = m - 1;
              }
            }
          }
        }
        i1 = n;
        m = i3;
        if (i3 < 0)
        {
          m = i3 + i5;
          i1 = n - 1;
        }
        return new a(paramCalendar, i2, i1, m + 1, paramCalendar.get(11));
      }
      catch (Exception paramResources)
      {
        paramResources.printStackTrace();
      }
      return null;
    }
    
    public int a()
    {
      long l1;
      if (Build.VERSION.SDK_INT >= 28) {
        l1 = (this.a.getTime().getTime() - k.getTimeInMillis()) / 86400000L;
      } else {
        l1 = (this.a.getTime().getTime() - l.getTime()) / 86400000L;
      }
      return ((int)l1 + 40) % j.length;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.a0
 * JD-Core Version:    0.7.0.1
 */