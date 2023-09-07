package o1;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.calendar.settings.ReminderModeActivity;
import com.miui.calendar.util.z;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

public class a
{
  private static MediaPlayer a;
  private static AtomicBoolean b = new AtomicBoolean(false);
  private static AudioManager c = null;
  private static AtomicBoolean d = new AtomicBoolean(false);
  private static int e = 0;
  private static Handler f = new a(Looper.getMainLooper());
  
  private static void c(Context paramContext)
  {
    MediaPlayer localMediaPlayer = a;
    if (localMediaPlayer == null) {
      return;
    }
    if (e != 0)
    {
      localMediaPlayer.setVolume(0.05F, 0.05F);
      return;
    }
    f.removeMessages(1001);
    if (c == null) {
      c = (AudioManager)paramContext.getSystemService("audio");
    }
    int i = 15;
    paramContext = c;
    if (paramContext != null) {
      i = paramContext.getStreamVolume(4);
    }
    float f1 = 1.0F / i;
    long l = 0L;
    float f2 = f1;
    while (f2 <= 1.0F)
    {
      paramContext = f;
      paramContext.sendMessageDelayed(paramContext.obtainMessage(1001, Float.valueOf(f2)), l);
      f2 += f1;
      l += 2000L;
    }
  }
  
  public static void d(int paramInt, Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("handleCallStateChanging(): state:");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(", initialState:");
    localStringBuilder.append(e);
    localStringBuilder.append(", alarmStarted:");
    localStringBuilder.append(b.get());
    z.h("Cal:D:AlarmKlaxon", localStringBuilder.toString());
    int i = e;
    h(paramInt);
    if (paramInt != i) {
      if ((paramInt != 0) && (b.get()))
      {
        z.h("Cal:D:AlarmKlaxon", "handleCallStateChanging(): alarm stop");
        l();
      }
      else if ((paramInt != 0) && (i == 0) && (!b.get()))
      {
        z.h("Cal:D:AlarmKlaxon", "handleCallStateChanging(): turn into in-call alarm");
        j(paramContext);
      }
      else if (paramInt == 0)
      {
        z.h("Cal:D:AlarmKlaxon", "handleCallStateChanging(): alarm resume");
        j(paramContext);
      }
    }
  }
  
  public static boolean e()
  {
    return d.get();
  }
  
  private static void f(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setAlarmStarted(): ");
    localStringBuilder.append(paramBoolean);
    z.h("Cal:D:AlarmKlaxon", localStringBuilder.toString());
    b.set(paramBoolean);
  }
  
  public static void g(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setAlertActivityRunning(): ");
    localStringBuilder.append(paramBoolean);
    z.h("Cal:D:AlarmKlaxon", localStringBuilder.toString());
    d.set(paramBoolean);
  }
  
  private static void h(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setCallState(): ");
    localStringBuilder.append(paramInt);
    z.h("Cal:D:AlarmKlaxon", localStringBuilder.toString());
    e = paramInt;
  }
  
  private static void i(Context paramContext, MediaPlayer paramMediaPlayer, int paramInt)
    throws IOException
  {
    paramContext = paramContext.getResources().openRawResourceFd(paramInt);
    if (paramContext != null)
    {
      paramMediaPlayer.setDataSource(paramContext.getFileDescriptor(), paramContext.getStartOffset(), paramContext.getLength());
      paramContext.close();
    }
  }
  
  public static void j(Context paramContext)
  {
    if (b.get())
    {
      z.h("Cal:D:AlarmKlaxon", "start(): already started, do nothing");
      return;
    }
    z.h("Cal:D:AlarmKlaxon", "start()");
    f(true);
    Uri localUri = ReminderModeActivity.Y(paramContext);
    if ((localUri != null) && (!TextUtils.isEmpty(localUri.toString())))
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("alarmNoise: ");
      ((StringBuilder)localObject).append(localUri);
      z.h("Cal:D:AlarmKlaxon", ((StringBuilder)localObject).toString());
      localObject = new MediaPlayer();
      a = (MediaPlayer)localObject;
      ((MediaPlayer)localObject).setOnErrorListener(new b());
      if (g4.a.e(paramContext)) {
        try
        {
          h(((TelephonyManager)paramContext.getSystemService("phone")).getCallState());
        }
        catch (SecurityException localSecurityException)
        {
          z.c("Cal:D:AlarmKlaxon", "no READ_PHONE_STATE permission");
        }
      }
      try
      {
        if (e != 0)
        {
          z.h("Cal:D:AlarmKlaxon", "start(): Using the in-call alarm");
          i(paramContext, a, 2131820547);
        }
        else
        {
          z.h("Cal:D:AlarmKlaxon", "start(): Using the alarmNoise");
          a.setDataSource(paramContext, localUri);
        }
        k(paramContext, a);
      }
      catch (Exception localException)
      {
        z.f("Cal:D:AlarmKlaxon", "start(): Using the fallback ringtone.", localException);
        try
        {
          a.reset();
          i(paramContext, a, 2131820545);
          k(paramContext, a);
        }
        catch (Exception paramContext)
        {
          z.f("Cal:D:AlarmKlaxon", "start(): Failed to play fallback ringtone", paramContext);
          f(false);
        }
      }
      return;
    }
    z.h("Cal:D:AlarmKlaxon", "alarmNoise is empty, klaxon canceled");
  }
  
  private static void k(Context paramContext, MediaPlayer paramMediaPlayer)
    throws IOException
  {
    z.h("Cal:D:AlarmKlaxon", "startAlarm()");
    if (c == null) {
      c = (AudioManager)paramContext.getSystemService("audio");
    }
    if (c.getStreamVolume(4) != 0)
    {
      paramMediaPlayer.setAudioStreamType(4);
      paramMediaPlayer.setLooping(true);
      paramMediaPlayer.prepare();
      c.requestAudioFocus(null, 4, 2);
      c(paramContext);
      paramMediaPlayer.start();
    }
    else
    {
      z.h("Cal:D:AlarmKlaxon", "stream volume is 0, don't play.");
    }
  }
  
  public static void l()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("stop(): sAlarmStarted:");
    ((StringBuilder)localObject1).append(b.get());
    z.h("Cal:D:AlarmKlaxon", ((StringBuilder)localObject1).toString());
    if (b.get())
    {
      f(false);
      localObject1 = a;
      if (localObject1 != null) {
        try
        {
          ((MediaPlayer)localObject1).stop();
          a.release();
          a = null;
        }
        catch (Exception localException)
        {
          z.f("Cal:D:AlarmKlaxon", "stop(): exception.", localException);
        }
      }
      localObject2 = c;
      if (localObject2 != null)
      {
        ((AudioManager)localObject2).abandonAudioFocus(null);
        c = null;
      }
    }
    Object localObject2 = f;
    if (localObject2 != null) {
      ((Handler)localObject2).removeCallbacksAndMessages(null);
    }
  }
  
  class a
    extends Handler
  {
    a()
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      if ((paramMessage != null) && (a.a() != null) && (paramMessage.what == 1001) && (a.b().get()))
      {
        float f = Float.parseFloat(paramMessage.obj.toString());
        paramMessage = new StringBuilder();
        paramMessage.append("set alarm volume: ");
        paramMessage.append(f);
        z.a("Cal:D:AlarmKlaxon", paramMessage.toString());
        a.a().setVolume(f, f);
      }
    }
  }
  
  class b
    implements MediaPlayer.OnErrorListener
  {
    public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
    {
      z.e("Cal:D:AlarmKlaxon", "Error occurred while playing audio. Stopping AlarmKlaxon.");
      a.l();
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o1.a
 * JD-Core Version:    0.7.0.1
 */