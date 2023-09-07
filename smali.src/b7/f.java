package b7;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.PersistableBundle;

public class f
{
  public static void a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean)
  {
    paramContext = (ClipboardManager)paramContext.getSystemService("clipboard");
    paramCharSequence1 = ClipData.newPlainText(paramCharSequence1, paramCharSequence2);
    if (Build.VERSION.SDK_INT >= 33)
    {
      paramCharSequence2 = new PersistableBundle();
      paramCharSequence2.putBoolean("android.content.extra.IS_SENSITIVE", paramBoolean);
      paramCharSequence1.getDescription().setExtras(paramCharSequence2);
    }
    paramContext.setPrimaryClip(paramCharSequence1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.f
 * JD-Core Version:    0.7.0.1
 */