package b4;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.android.calendar.application.CalendarApplication;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import miuix.core.util.DirectIndexedFile;
import miuix.core.util.DirectIndexedFile.h;

public class a
{
  private static a b;
  private static final Long c = Long.valueOf(new GregorianCalendar(1901, 0, 1).getTimeInMillis());
  private static final Long d = Long.valueOf(new GregorianCalendar(2100, 11, 31).getTimeInMillis());
  private static final String[] e = { "立碑", "祭祀", "起基", "移徙", "开仓", "破屋", "作厕", "合帐", "入学", "交易", "造仓", "挂匾", "破土", "合脊", "启攒", "斋醮", "教牛马", "捕捉", "安葬", "余事勿取", "安香", "安门", "上梁", "合寿木", "行丧", "订盟", "经络", "结网", "造桥", "安床", "取渔", "沐浴", "移柩", "造畜椆栖", "酬神", "进人口", "开生坟", "栽种", "作梁", "普渡", "掘井", "谢土", "立券", "割蜜", "乘船", "入宅", "分居", "架马", "归宁", "安碓磑", "雕刻", "塑绘", "祈福", "开光", "断蚁", "出火", "入殓", "造屋", "修饰垣墙", "造车器", "出行", "裁衣", "整手足甲", "平治道涂", "造船", "归岫", "纳婿", "问名", "雇庸", "冠笄", "开柱眼", "修门", "理发", "习艺", "纳畜", "开渠", "置产", "纳财", "安机械", "出货财", "拆卸", "纳采", "修坟", "扫舍", "求嗣", "放水", "补垣", "探病", "求医", "针灸", "竖柱", "成服", "开池", "伐木", "作灶", "词讼", "赴任", "坏垣", "塞穴", "筑堤", "会亲友", "牧养", "诸事不宜", "造庙", "解除", "除服", "畋猎", "治病", "定磉", "开市", "动土", "嫁娶", "修造" };
  private DirectIndexedFile.h a;
  
  private a()
  {
    c();
  }
  
  public static a b()
  {
    try
    {
      if (b == null)
      {
        locala = new b4/a;
        locala.<init>();
        b = locala;
      }
      a locala = b;
      return locala;
    }
    finally {}
  }
  
  private void c()
  {
    String str = miuix.core.util.a.b(CalendarApplication.e().getApplicationContext(), "huangli.idf");
    if ((str != null) && (new File(str).exists())) {
      try
      {
        this.a = DirectIndexedFile.b(str);
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
      }
    }
    if (this.a == null) {
      try
      {
        this.a = DirectIndexedFile.a(CalendarApplication.e().getApplicationContext().getResources().getAssets().open("huangli.idf", 1));
      }
      catch (IOException localIOException2)
      {
        Log.w("AlmanacConsPros", "Can't read huangli.idf, NO huangli supported!");
      }
    }
  }
  
  public String[] a(long paramLong)
  {
    if (this.a == null) {
      return null;
    }
    Object localObject = c;
    if ((paramLong >= ((Long)localObject).longValue()) && (paramLong <= d.longValue()))
    {
      String[] arrayOfString1 = new String[2];
      int i = (int)((paramLong - ((Long)localObject).longValue()) / 86400000L);
      String[] arrayOfString2 = ((String)this.a.c(0, i, 0)).split(",", -1);
      localObject = new ArrayList();
      if (arrayOfString2.length == 2) {
        for (i = 0; i < arrayOfString2.length; i++)
        {
          ((ArrayList)localObject).clear();
          if (!TextUtils.isEmpty(arrayOfString2[i]))
          {
            String[] arrayOfString3 = arrayOfString2[i].split("、");
            int j = arrayOfString3.length;
            for (int k = 0; k < j; k++)
            {
              int m = Integer.parseInt(arrayOfString3[k]);
              String[] arrayOfString4 = e;
              if (m < arrayOfString4.length) {
                ((ArrayList)localObject).add(arrayOfString4[m]);
              }
            }
          }
          arrayOfString1[i] = TextUtils.join(" ", (Iterable)localObject);
        }
      }
      return arrayOfString1;
    }
    return null;
  }
  
  protected void finalize()
    throws Throwable
  {
    DirectIndexedFile.h localh = this.a;
    if (localh != null) {
      localh.a();
    }
    super.finalize();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b4.a
 * JD-Core Version:    0.7.0.1
 */