package a4;

import android.content.Context;
import b4.a;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.settings.j;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;

public class d
{
  private static final String[] a = { "甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸" };
  private static final String[] b = { "子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥" };
  private static String[] c;
  
  static
  {
    s();
  }
  
  public static String a(java.util.Calendar paramCalendar)
  {
    String str1 = q(paramCalendar);
    String str2 = h(paramCalendar);
    String str3 = d(paramCalendar);
    paramCalendar = new StringBuilder();
    paramCalendar.append(str1);
    paramCalendar.append(" ");
    paramCalendar.append(str2);
    paramCalendar.append(" ");
    paramCalendar.append(str3);
    return paramCalendar.toString();
  }
  
  private static java.util.Calendar b(java.util.Calendar paramCalendar)
  {
    java.util.Calendar localCalendar = java.util.Calendar.getInstance();
    paramCalendar = a0.w(paramCalendar.get(1), 1, 1);
    localCalendar.set(paramCalendar[0], paramCalendar[1] - 1, paramCalendar[2], 23, 59, 59);
    localCalendar.set(14, 999);
    localCalendar.add(5, -1);
    return localCalendar;
  }
  
  public static String c(int paramInt)
  {
    int i = paramInt % 12;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(new String[] { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" }[i]);
    localStringBuilder.append("日冲");
    localStringBuilder.append(new String[] { "马", "羊", "猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇" }[i]);
    localStringBuilder.append("(");
    localStringBuilder.append(new String[] { "戊", "己", "庚", "辛", "壬", "癸", "甲", "乙", "丙", "丁" }[(paramInt % 10)]);
    localStringBuilder.append(new String[] { "午", "未", "申", "酉", "戌", "亥", "子", "丑", "寅", "卯", "辰", "巳" }[i]);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  private static String d(java.util.Calendar paramCalendar)
  {
    miuix.pickerwidget.date.Calendar localCalendar = new miuix.pickerwidget.date.Calendar();
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
    return localCalendar.format(CalendarApplication.e(), "ee日");
  }
  
  private static int e(int paramInt)
  {
    return (paramInt + 4) % 10;
  }
  
  public static String[] f(long paramLong)
  {
    try
    {
      String[] arrayOfString1 = new String[2];
      String[] arrayOfString2 = a.b().a(paramLong);
      if ((arrayOfString2 != null) && (arrayOfString2.length == 2)) {
        for (int i = 0; i < arrayOfString2.length; i++)
        {
          String[] arrayOfString3 = arrayOfString2[i].split(" ");
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          int j = 0;
          int k = j;
          while (j < arrayOfString3.length)
          {
            k += arrayOfString3[j].length();
            if (k > 10) {
              break;
            }
            if (localStringBuilder.length() > 0) {
              localStringBuilder.append(" ");
            }
            localStringBuilder.append(arrayOfString3[j]);
            j++;
          }
          arrayOfString1[i] = localStringBuilder.toString();
        }
      }
      if ((paramLong >= 1569859200000L) && (paramLong < 1569945600000L)) {
        arrayOfString1[0] = arrayOfString1[0].replace(" 诸事不宜", "");
      }
      return arrayOfString1;
    }
    catch (Exception localException)
    {
      z.d("Cal:D:HuangLiUtils", "getHuangLiStrings()", localException);
    }
    return null;
  }
  
  public static String g(java.util.Calendar paramCalendar)
  {
    miuix.pickerwidget.date.Calendar localCalendar = new miuix.pickerwidget.date.Calendar();
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
    return localCalendar.format(CalendarApplication.e(), "N月e");
  }
  
  private static String h(java.util.Calendar paramCalendar)
  {
    miuix.pickerwidget.date.Calendar localCalendar = new miuix.pickerwidget.date.Calendar();
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
    return localCalendar.format(CalendarApplication.e(), "NN月");
  }
  
  public static String i(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(new String[] { "甲不开仓财物耗散", "乙不栽植千株不长", "丙不修灶必见灾殃", "丁不剃头头必生疮", "戊不受田田主不祥", "己不破券二比并亡", "庚不经络织机虚张", "辛不合酱主人不尝", "壬不汲水更难提防", "癸不词讼理弱敌强" }[(paramInt % 10)]);
    localStringBuilder.append(" ");
    localStringBuilder.append(new String[] { "子不问卜自惹祸殃", "丑不冠带主不还乡", "寅不祭祀神鬼不尝", "卯不穿井水泉不香", "辰不哭泣必主重丧", "巳不远行财物伏藏", "午不苫盖屋主更张", "未不服药毒气入肠", "申不安床鬼祟入房", "酉不宴客醉坐颠狂", "戌不吃犬作怪上床", "亥不嫁娶不利新郎" }[(paramInt % 12)]);
    return localStringBuilder.toString();
  }
  
  public static String j(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("煞");
    localStringBuilder.append(new String[] { "南", "东", "北", "西", "南", "东", "北", "西", "南", "东", "北", "西" }[(paramInt % 12)]);
    return localStringBuilder.toString();
  }
  
  public static String k(int paramInt)
  {
    int i = e(paramInt);
    paramInt = r(paramInt) / 2;
    return a.a[(i * 6 + paramInt)];
  }
  
  public static String l(Context paramContext, java.util.Calendar paramCalendar)
  {
    if (paramContext == null) {
      return m(paramCalendar);
    }
    return a0.o(paramContext.getResources(), paramCalendar);
  }
  
  public static String m(java.util.Calendar paramCalendar)
  {
    miuix.pickerwidget.date.Calendar localCalendar = new miuix.pickerwidget.date.Calendar();
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
    return localCalendar.format(CalendarApplication.e(), "t");
  }
  
  public static String n(int paramInt)
  {
    int i = paramInt % 60;
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(new String[] { "占门", "碓磨", "厨灶", "仓库", "房床" }[(paramInt % 5)]);
    ((StringBuilder)localObject1).append(new String[] { "碓", "厕", "炉", "门", "栖", "床" }[(paramInt % 6)]);
    Object localObject2 = ((StringBuilder)localObject1).toString();
    localObject1 = "外正南";
    if (i < 2) {
      localObject1 = "外东南";
    } else if (i >= 7) {
      if (i < 14) {
        localObject1 = "外西南";
      } else if (i >= 16) {
        if (i < 18) {
          localObject1 = "外正西";
        } else if (i < 24) {
          localObject1 = "外西北";
        } else if (i < 29) {
          localObject1 = "外正北";
        } else if (i < 34) {
          localObject1 = "房内北";
        } else if (i < 40) {
          localObject1 = "房内南";
        } else if (i < 45) {
          localObject1 = "房内东";
        } else if (i < 51) {
          localObject1 = "外东北";
        } else {
          localObject1 = "外正东";
        }
      }
    }
    Object localObject3 = localObject2;
    if (((String)localObject2).equals("占门门")) {
      localObject3 = "占大门";
    }
    localObject2 = localObject3;
    if (((String)localObject3).equals("碓磨碓")) {
      localObject2 = "占碓磨";
    }
    localObject3 = localObject2;
    if (((String)localObject2).equals("房床床")) {
      localObject3 = "占房床";
    }
    localObject2 = localObject3;
    if (((String)localObject3).equals("占门栖")) {
      localObject2 = "门鸡栖";
    }
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append((String)localObject2);
    ((StringBuilder)localObject3).append((String)localObject1);
    return ((StringBuilder)localObject3).toString();
  }
  
  public static String o(int paramInt1, int paramInt2)
  {
    int i = new int[] { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5 }[(paramInt2 % 10)];
    int j = new int[] { 1, 1, 2, 2, 3, 3, 1, 1, 2, 2, 3, 3 }[(paramInt2 % 12)];
    paramInt1 = (paramInt2 - (paramInt1 - 2) % 12) % 12;
    if (paramInt1 < 0) {
      paramInt1 += 12;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramInt2 = paramInt2 % 60 / 2;
    localStringBuilder.append(new String[] { "海中", "炉中", "大林", "路旁", "剑锋", "山头", "涧下", "城头", "白蜡", "杨柳", "井泉", "屋上", "霹雳", "松柏", "长流", "沙石", "山下", "平地", "壁上", "金箔", "佛灯", "天河", "大驿", "钗川", "桑拓", "大溪", "沙中", "天上", "石榴", "大海" }[paramInt2]);
    localStringBuilder.append(new String[] { "土", "木", "金", "水", "火" }[((i + j) % 5)]);
    localStringBuilder.append(" ");
    localStringBuilder.append(new String[] { "开", "闭", "建", "除", "满", "平", "定", "执", "破", "危", "成", "收" }[paramInt1]);
    localStringBuilder.append("执位");
    return localStringBuilder.toString();
  }
  
  public static String p(java.util.Calendar paramCalendar)
  {
    r0 localr0 = new r0();
    localr0.D(paramCalendar.getTimeInMillis());
    int i = r0.n(paramCalendar.getTimeInMillis(), localr0.l());
    return new String[] { "东方角木蛟-吉", "东方亢金龙-凶", "东方氐土貉-凶", "东方房日兔-吉", "东方心月狐-凶", "东方尾火虎-吉", "东方箕水豹-吉", "北方斗木獬-吉", "北方牛金牛-凶", "北方女土蝠-凶", "北方虚日鼠-凶", "北方危月燕-凶", "北方室火猪-吉", "北方壁水貐-吉", "西方奎木狼-凶", "西方娄金狗-吉", "西方胃土雉-吉", "西方昴日鸡-凶", "西方毕月乌-吉", "西方觜火猴-凶", "西方参水猿-凶", "南方井木犴-吉", "南方鬼金羊-凶", "南方柳土獐-凶", "南方星日马-凶", "南方张月鹿-吉", "南方翼火蛇-凶", "南方轸水蚓-吉" }[((i + 11) % 28)];
  }
  
  public static String q(java.util.Calendar paramCalendar)
  {
    int i = paramCalendar.get(1);
    int j = i;
    if (paramCalendar.getTimeInMillis() <= b(paramCalendar).getTimeInMillis()) {
      j = i - 1;
    }
    j -= 3;
    int k = j % 10;
    i = 12;
    int m = j % 12;
    j = k;
    if (k == 0) {
      j = 10;
    }
    if (m != 0) {
      i = m;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a[(j - 1)]);
    paramCalendar = b;
    j = i - 1;
    localStringBuilder.append(paramCalendar[j]);
    localStringBuilder.append(c[j]);
    localStringBuilder.append("年");
    return localStringBuilder.toString();
  }
  
  private static int r(int paramInt)
  {
    return (paramInt + 6) % 12;
  }
  
  public static void s()
  {
    if (y.c()) {
      c = new String[] { "鼠", "牛", "虎", "兔", "龍", "蛇", "馬", "羊", "猴", "鷄", "狗", "猪" };
    } else {
      c = new String[] { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
    }
  }
  
  public static boolean t(Context paramContext)
  {
    boolean bool;
    if ((y.p(paramContext)) && (j.k(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a4.d
 * JD-Core Version:    0.7.0.1
 */