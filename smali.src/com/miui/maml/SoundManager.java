package com.miui.maml;

import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class SoundManager
  implements SoundPool.OnLoadCompleteListener
{
  private static final String ADVANCE = "advance/";
  private static final String LOCKSCREEN_AUDIO = "lockscreen_audio/";
  private static final String LOG_TAG = "MamlSoundManager";
  private static final int MAX_FILE_SIZE = 524288;
  private static final int MAX_STREAMS = 8;
  private Handler mHandler;
  private Object mInitSignal = new Object();
  private boolean mInitialized;
  private HashMap<Integer, SoundOptions> mPendingSoundMap = new HashMap();
  private ArrayList<Integer> mPlayingSoundMap = new ArrayList();
  private ResourceManager mResourceManager;
  private SoundPool mSoundPool;
  private HashMap<String, Integer> mSoundPoolMap = new HashMap();
  
  public SoundManager(ScreenContext paramScreenContext)
  {
    this.mResourceManager = paramScreenContext.mResourceManager;
    this.mHandler = paramScreenContext.getHandler();
  }
  
  private void init()
  {
    if (this.mInitialized) {
      return;
    }
    if (Thread.currentThread().getId() == this.mHandler.getLooper().getThread().getId())
    {
      ??? = new SoundPool(8, 3, 100);
      this.mSoundPool = ((SoundPool)???);
      ((SoundPool)???).setOnLoadCompleteListener(this);
      this.mInitialized = true;
    }
    else
    {
      this.mHandler.post(new Runnable()
      {
        public void run()
        {
          SoundManager.access$002(SoundManager.this, new SoundPool(8, 3, 100));
          SoundManager.this.mSoundPool.setOnLoadCompleteListener(SoundManager.this);
          synchronized (SoundManager.this.mInitSignal)
          {
            SoundManager.access$202(SoundManager.this, true);
            SoundManager.this.mInitSignal.notify();
            return;
          }
        }
      });
    }
    for (;;)
    {
      synchronized (this.mInitSignal)
      {
        if (this.mInitialized) {
          return;
        }
      }
      try
      {
        this.mInitSignal.wait();
      }
      catch (InterruptedException localInterruptedException) {}
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  /* Error */
  private int playSoundImp(int paramInt, SoundOptions paramSoundOptions)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 84	com/miui/maml/SoundManager:mSoundPool	Landroid/media/SoundPool;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnonnull +7 -> 15
    //   11: aload_0
    //   12: monitorexit
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_2
    //   16: getfield 142	com/miui/maml/SoundManager$SoundOptions:mKeepCur	Z
    //   19: ifne +7 -> 26
    //   22: aload_0
    //   23: invokevirtual 145	com/miui/maml/SoundManager:stopAllPlaying	()V
    //   26: aload_0
    //   27: getfield 66	com/miui/maml/SoundManager:mPlayingSoundMap	Ljava/util/ArrayList;
    //   30: astore_3
    //   31: aload_3
    //   32: monitorenter
    //   33: aload_0
    //   34: getfield 84	com/miui/maml/SoundManager:mSoundPool	Landroid/media/SoundPool;
    //   37: astore 4
    //   39: aload_2
    //   40: getfield 149	com/miui/maml/SoundManager$SoundOptions:mVolume	F
    //   43: fstore 5
    //   45: aload_2
    //   46: getfield 152	com/miui/maml/SoundManager$SoundOptions:mLoop	Z
    //   49: ifeq +9 -> 58
    //   52: iconst_m1
    //   53: istore 6
    //   55: goto +6 -> 61
    //   58: iconst_0
    //   59: istore 6
    //   61: aload 4
    //   63: iload_1
    //   64: fload 5
    //   66: fload 5
    //   68: iconst_1
    //   69: iload 6
    //   71: fconst_1
    //   72: invokevirtual 156	android/media/SoundPool:play	(IFFIIF)I
    //   75: istore_1
    //   76: aload_0
    //   77: getfield 66	com/miui/maml/SoundManager:mPlayingSoundMap	Ljava/util/ArrayList;
    //   80: iload_1
    //   81: invokestatic 162	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   84: invokevirtual 166	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   87: pop
    //   88: aload_3
    //   89: monitorexit
    //   90: aload_0
    //   91: monitorexit
    //   92: iload_1
    //   93: ireturn
    //   94: astore_2
    //   95: aload_3
    //   96: monitorexit
    //   97: aload_2
    //   98: athrow
    //   99: astore_2
    //   100: ldc 26
    //   102: aload_2
    //   103: invokevirtual 170	java/lang/Object:toString	()Ljava/lang/String;
    //   106: invokestatic 176	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   109: pop
    //   110: aload_0
    //   111: monitorexit
    //   112: iconst_0
    //   113: ireturn
    //   114: astore_2
    //   115: aload_0
    //   116: monitorexit
    //   117: aload_2
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	SoundManager
    //   0	119	1	paramInt	int
    //   0	119	2	paramSoundOptions	SoundOptions
    //   37	25	4	localSoundPool	SoundPool
    //   43	24	5	f	float
    //   53	17	6	i	int
    // Exception table:
    //   from	to	target	type
    //   33	52	94	finally
    //   61	90	94	finally
    //   95	97	94	finally
    //   26	33	99	java/lang/Exception
    //   97	99	99	java/lang/Exception
    //   2	7	114	finally
    //   15	26	114	finally
    //   26	33	114	finally
    //   97	99	114	finally
    //   100	110	114	finally
  }
  
  public void onLoadComplete(SoundPool paramSoundPool, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      playSoundImp(paramInt1, (SoundOptions)this.mPendingSoundMap.get(Integer.valueOf(paramInt1)));
    }
    this.mPendingSoundMap.remove(Integer.valueOf(paramInt1));
  }
  
  public void pause()
  {
    stopAllPlaying();
  }
  
  /* Error */
  public int playSound(String paramString, SoundOptions paramSoundOptions)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 92	com/miui/maml/SoundManager:mInitialized	Z
    //   6: ifne +7 -> 13
    //   9: aload_0
    //   10: invokespecial 194	com/miui/maml/SoundManager:init	()V
    //   13: aload_0
    //   14: getfield 84	com/miui/maml/SoundManager:mSoundPool	Landroid/media/SoundPool;
    //   17: astore_3
    //   18: aload_3
    //   19: ifnonnull +7 -> 26
    //   22: aload_0
    //   23: monitorexit
    //   24: iconst_0
    //   25: ireturn
    //   26: aload_0
    //   27: getfield 59	com/miui/maml/SoundManager:mSoundPoolMap	Ljava/util/HashMap;
    //   30: aload_1
    //   31: invokevirtual 182	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   34: checkcast 158	java/lang/Integer
    //   37: astore 4
    //   39: aload 4
    //   41: ifnonnull +304 -> 345
    //   44: new 196	java/io/File
    //   47: astore_3
    //   48: new 198	java/lang/StringBuilder
    //   51: astore 5
    //   53: aload 5
    //   55: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   58: aload 5
    //   60: getstatic 204	miui/content/res/ThemeResources:THEME_MAGIC_PATH	Ljava/lang/String;
    //   63: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: aload 5
    //   69: ldc 23
    //   71: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: pop
    //   75: aload 5
    //   77: ldc 20
    //   79: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: pop
    //   83: aload 5
    //   85: aload_1
    //   86: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: pop
    //   90: aload_3
    //   91: aload 5
    //   93: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokespecial 212	java/io/File:<init>	(Ljava/lang/String;)V
    //   99: aload_3
    //   100: invokevirtual 216	java/io/File:exists	()Z
    //   103: ifne +61 -> 164
    //   106: aload_0
    //   107: getfield 73	com/miui/maml/SoundManager:mResourceManager	Lcom/miui/maml/ResourceManager;
    //   110: aload_1
    //   111: invokevirtual 222	com/miui/maml/ResourceManager:getExtraFile	(Ljava/lang/String;)Ljava/io/File;
    //   114: astore_3
    //   115: aload_3
    //   116: ifnull +13 -> 129
    //   119: aload_3
    //   120: astore 6
    //   122: aload_3
    //   123: invokevirtual 216	java/io/File:exists	()Z
    //   126: ifne +84 -> 210
    //   129: new 198	java/lang/StringBuilder
    //   132: astore_2
    //   133: aload_2
    //   134: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   137: aload_2
    //   138: ldc 224
    //   140: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: pop
    //   144: aload_2
    //   145: aload_1
    //   146: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: pop
    //   150: ldc 26
    //   152: aload_2
    //   153: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: invokestatic 176	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   159: pop
    //   160: aload_0
    //   161: monitorexit
    //   162: iconst_0
    //   163: ireturn
    //   164: aload_3
    //   165: astore 6
    //   167: aload_3
    //   168: invokevirtual 227	java/io/File:length	()J
    //   171: ldc2_w 228
    //   174: lcmp
    //   175: ifle +35 -> 210
    //   178: ldc 26
    //   180: ldc 231
    //   182: iconst_2
    //   183: anewarray 4	java/lang/Object
    //   186: dup
    //   187: iconst_0
    //   188: sipush 512
    //   191: invokestatic 162	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   194: aastore
    //   195: dup
    //   196: iconst_1
    //   197: aload_1
    //   198: aastore
    //   199: invokestatic 237	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   202: invokestatic 240	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   205: pop
    //   206: aload_0
    //   207: monitorexit
    //   208: iconst_0
    //   209: ireturn
    //   210: aload 4
    //   212: astore_3
    //   213: aload 6
    //   215: ldc 241
    //   217: invokestatic 247	android/os/ParcelFileDescriptor:open	(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    //   220: astore 7
    //   222: aload 4
    //   224: astore 5
    //   226: aload 7
    //   228: ifnull +70 -> 298
    //   231: aload_0
    //   232: getfield 84	com/miui/maml/SoundManager:mSoundPool	Landroid/media/SoundPool;
    //   235: aload 7
    //   237: invokevirtual 251	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   240: lconst_0
    //   241: aload 6
    //   243: invokevirtual 227	java/io/File:length	()J
    //   246: iconst_1
    //   247: invokevirtual 255	android/media/SoundPool:load	(Ljava/io/FileDescriptor;JJI)I
    //   250: invokestatic 162	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   253: astore 5
    //   255: aload 5
    //   257: astore 4
    //   259: aload_0
    //   260: getfield 59	com/miui/maml/SoundManager:mSoundPoolMap	Ljava/util/HashMap;
    //   263: aload_1
    //   264: aload 5
    //   266: invokevirtual 259	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   269: pop
    //   270: goto +28 -> 298
    //   273: astore_1
    //   274: aload 7
    //   276: invokevirtual 262	android/os/ParcelFileDescriptor:close	()V
    //   279: goto +14 -> 293
    //   282: astore 5
    //   284: aload 4
    //   286: astore_3
    //   287: aload_1
    //   288: aload 5
    //   290: invokevirtual 268	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   293: aload 4
    //   295: astore_3
    //   296: aload_1
    //   297: athrow
    //   298: aload 5
    //   300: astore_3
    //   301: aload 7
    //   303: ifnull +28 -> 331
    //   306: aload 5
    //   308: astore_3
    //   309: aload 7
    //   311: invokevirtual 262	android/os/ParcelFileDescriptor:close	()V
    //   314: aload 5
    //   316: astore_3
    //   317: goto +14 -> 331
    //   320: astore_1
    //   321: ldc 26
    //   323: ldc_w 270
    //   326: aload_1
    //   327: invokestatic 273	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   330: pop
    //   331: aload_0
    //   332: getfield 61	com/miui/maml/SoundManager:mPendingSoundMap	Ljava/util/HashMap;
    //   335: aload_3
    //   336: aload_2
    //   337: invokevirtual 259	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   340: pop
    //   341: aload_0
    //   342: monitorexit
    //   343: iconst_0
    //   344: ireturn
    //   345: aload_0
    //   346: aload 4
    //   348: invokevirtual 277	java/lang/Integer:intValue	()I
    //   351: aload_2
    //   352: invokespecial 184	com/miui/maml/SoundManager:playSoundImp	(ILcom/miui/maml/SoundManager$SoundOptions;)I
    //   355: istore 8
    //   357: aload_0
    //   358: monitorexit
    //   359: iload 8
    //   361: ireturn
    //   362: astore_1
    //   363: aload_0
    //   364: monitorexit
    //   365: aload_1
    //   366: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	367	0	this	SoundManager
    //   0	367	1	paramString	String
    //   0	367	2	paramSoundOptions	SoundOptions
    //   17	319	3	localObject1	Object
    //   37	310	4	localObject2	Object
    //   51	214	5	localObject3	Object
    //   282	33	5	localThrowable	java.lang.Throwable
    //   120	122	6	localObject4	Object
    //   220	90	7	localParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   355	5	8	i	int
    // Exception table:
    //   from	to	target	type
    //   231	255	273	finally
    //   259	270	273	finally
    //   274	279	282	finally
    //   213	222	320	java/io/IOException
    //   287	293	320	java/io/IOException
    //   296	298	320	java/io/IOException
    //   309	314	320	java/io/IOException
    //   2	13	362	finally
    //   13	18	362	finally
    //   26	39	362	finally
    //   44	115	362	finally
    //   122	129	362	finally
    //   129	160	362	finally
    //   167	206	362	finally
    //   213	222	362	finally
    //   287	293	362	finally
    //   296	298	362	finally
    //   309	314	362	finally
    //   321	331	362	finally
    //   331	341	362	finally
    //   345	357	362	finally
  }
  
  public void playSound(int paramInt, Command arg2)
  {
    try
    {
      if (!this.mInitialized) {
        init();
      }
      if ((this.mSoundPool != null) && (paramInt > 0))
      {
        int i = 2.$SwitchMap$com$miui$maml$SoundManager$Command[???.ordinal()];
        if (i != 2)
        {
          if (i != 3)
          {
            if (i == 4)
            {
              this.mSoundPool.stop(paramInt);
              synchronized (this.mPlayingSoundMap)
              {
                this.mPlayingSoundMap.remove(Integer.valueOf(paramInt));
              }
            }
          }
          else {
            this.mSoundPool.resume(paramInt);
          }
        }
        else {
          this.mSoundPool.pause(paramInt);
        }
        return;
      }
      return;
    }
    finally {}
  }
  
  public void release()
  {
    try
    {
      boolean bool = this.mInitialized;
      if (!bool) {
        return;
      }
      stopAllPlaying();
      if (this.mSoundPool != null)
      {
        this.mSoundPoolMap.clear();
        this.mSoundPool.setOnLoadCompleteListener(null);
        this.mSoundPool.release();
        this.mSoundPool = null;
      }
      this.mInitialized = false;
      return;
    }
    finally {}
  }
  
  protected void stopAllPlaying()
  {
    if (this.mPlayingSoundMap.isEmpty()) {
      return;
    }
    synchronized (this.mPlayingSoundMap)
    {
      if (this.mSoundPool != null)
      {
        Iterator localIterator = this.mPlayingSoundMap.iterator();
        while (localIterator.hasNext())
        {
          Integer localInteger = (Integer)localIterator.next();
          this.mSoundPool.stop(localInteger.intValue());
        }
      }
      this.mPlayingSoundMap.clear();
      return;
    }
  }
  
  public static enum Command
  {
    static
    {
      Command localCommand1 = new Command("Play", 0);
      Play = localCommand1;
      Command localCommand2 = new Command("Pause", 1);
      Pause = localCommand2;
      Command localCommand3 = new Command("Resume", 2);
      Resume = localCommand3;
      Command localCommand4 = new Command("Stop", 3);
      Stop = localCommand4;
      $VALUES = new Command[] { localCommand1, localCommand2, localCommand3, localCommand4 };
    }
    
    private Command() {}
    
    public static Command parse(String paramString)
    {
      if ("pause".equals(paramString)) {
        return Pause;
      }
      if ("resume".equals(paramString)) {
        return Resume;
      }
      if ("stop".equals(paramString)) {
        return Stop;
      }
      return Play;
    }
  }
  
  public static class SoundOptions
  {
    public boolean mKeepCur;
    public boolean mLoop;
    public float mVolume;
    
    public SoundOptions(boolean paramBoolean1, boolean paramBoolean2, float paramFloat)
    {
      this.mKeepCur = paramBoolean1;
      this.mLoop = paramBoolean2;
      if (paramFloat < 0.0F) {
        this.mVolume = 0.0F;
      } else if (paramFloat > 1.0F) {
        this.mVolume = 1.0F;
      } else {
        this.mVolume = paramFloat;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.SoundManager
 * JD-Core Version:    0.7.0.1
 */