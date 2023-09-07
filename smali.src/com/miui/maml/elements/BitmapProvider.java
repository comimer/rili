package com.miui.maml.elements;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ObjectFactory.BitmapProviderFactory;
import com.miui.maml.ResourceManager;
import com.miui.maml.ResourceManager.AsyncLoadListener;
import com.miui.maml.ResourceManager.BitmapInfo;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.util.Utils;
import java.io.File;
import java.net.URI;

public abstract class BitmapProvider
{
  private static final String LOG_TAG = "BitmapProvider";
  protected ScreenElementRoot mRoot;
  protected VersionedBitmap mVersionedBitmap = new VersionedBitmap(null);
  
  public BitmapProvider(ScreenElementRoot paramScreenElementRoot)
  {
    this.mRoot = paramScreenElementRoot;
  }
  
  private static int computeSampleSize(BitmapFactory.Options paramOptions, int paramInt)
  {
    double d = Math.sqrt(paramOptions.outHeight * paramOptions.outWidth / paramInt);
    int i;
    for (paramInt = 1;; paramInt = i)
    {
      i = paramInt * 2;
      if (i > d) {
        break;
      }
    }
    return paramInt;
  }
  
  public static BitmapProvider create(ScreenElementRoot paramScreenElementRoot, String paramString)
  {
    paramString.hashCode();
    int i = paramString.hashCode();
    int j = -1;
    switch (i)
    {
    default: 
      break;
    case 2050377161: 
      if (paramString.equals("ApplicationIcon")) {
        j = 6;
      }
      break;
    case 1758035405: 
      if (paramString.equals("ResourceImage")) {
        j = 5;
      }
      break;
    case 1258571575: 
      if (paramString.equals("VirtualScreen")) {
        j = 4;
      }
      break;
    case 85324: 
      if (paramString.equals("Uri")) {
        j = 3;
      }
      break;
    case -495181077: 
      if (paramString.equals("FileSystem")) {
        j = 2;
      }
      break;
    case -499376165: 
      if (paramString.equals("BitmapHolder")) {
        j = 1;
      }
      break;
    case -1931592872: 
      if (paramString.equals("BitmapVar")) {
        j = 0;
      }
      break;
    }
    switch (j)
    {
    default: 
      ObjectFactory.BitmapProviderFactory localBitmapProviderFactory = (ObjectFactory.BitmapProviderFactory)paramScreenElementRoot.getContext().getObjectFactory("BitmapProvider");
      if (localBitmapProviderFactory != null)
      {
        paramString = localBitmapProviderFactory.create(paramScreenElementRoot, paramString);
        if (paramString != null) {
          return paramString;
        }
      }
      return new ResourceImageProvider(paramScreenElementRoot);
    case 6: 
      return new AppIconProvider(paramScreenElementRoot);
    case 5: 
      return new ResourceImageProvider(paramScreenElementRoot);
    case 4: 
      return new VirtualScreenProvider(paramScreenElementRoot);
    case 3: 
      return new UriProvider(paramScreenElementRoot);
    case 2: 
      return new FileSystemProvider(paramScreenElementRoot);
    case 1: 
      return new BitmapHolderProvider(paramScreenElementRoot);
    }
    return new BitmapVariableProvider(paramScreenElementRoot);
  }
  
  public void finish()
  {
    this.mVersionedBitmap.reset();
  }
  
  public VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    return this.mVersionedBitmap;
  }
  
  /* Error */
  protected Bitmap getBitmapFromUri(Uri paramUri, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 56	com/miui/maml/elements/BitmapProvider:mRoot	Lcom/miui/maml/ScreenElementRoot;
    //   7: invokevirtual 106	com/miui/maml/ScreenElementRoot:getContext	()Lcom/miui/maml/ScreenContext;
    //   10: getfield 138	com/miui/maml/ScreenContext:mContext	Landroid/content/Context;
    //   13: invokevirtual 144	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   16: aload_1
    //   17: invokevirtual 150	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   20: astore 5
    //   22: iload_2
    //   23: ifle +114 -> 137
    //   26: iload_3
    //   27: ifle +110 -> 137
    //   30: new 61	android/graphics/BitmapFactory$Options
    //   33: astore 6
    //   35: aload 6
    //   37: invokespecial 151	android/graphics/BitmapFactory$Options:<init>	()V
    //   40: aload 6
    //   42: iconst_1
    //   43: putfield 155	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   46: aload 5
    //   48: aconst_null
    //   49: aload 6
    //   51: invokestatic 161	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   54: pop
    //   55: aload 6
    //   57: aload 6
    //   59: iload_2
    //   60: iload_3
    //   61: imul
    //   62: invokestatic 163	com/miui/maml/elements/BitmapProvider:computeSampleSize	(Landroid/graphics/BitmapFactory$Options;I)I
    //   65: putfield 166	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   68: aload 6
    //   70: iconst_0
    //   71: putfield 155	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   74: aload 6
    //   76: iload_3
    //   77: putfield 65	android/graphics/BitmapFactory$Options:outHeight	I
    //   80: aload 6
    //   82: iload_2
    //   83: putfield 68	android/graphics/BitmapFactory$Options:outWidth	I
    //   86: aload_0
    //   87: getfield 56	com/miui/maml/elements/BitmapProvider:mRoot	Lcom/miui/maml/ScreenElementRoot;
    //   90: invokevirtual 106	com/miui/maml/ScreenElementRoot:getContext	()Lcom/miui/maml/ScreenContext;
    //   93: getfield 138	com/miui/maml/ScreenContext:mContext	Landroid/content/Context;
    //   96: invokevirtual 144	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   99: aload_1
    //   100: invokevirtual 150	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   103: astore_1
    //   104: aload 5
    //   106: astore 4
    //   108: aload_1
    //   109: astore 7
    //   111: aload_1
    //   112: aconst_null
    //   113: aload 6
    //   115: invokestatic 161	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   118: astore 6
    //   120: aload 5
    //   122: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   125: aload_1
    //   126: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   129: aload 6
    //   131: areturn
    //   132: astore 6
    //   134: goto +58 -> 192
    //   137: aload 5
    //   139: aconst_null
    //   140: aconst_null
    //   141: invokestatic 161	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   144: astore_1
    //   145: aload 5
    //   147: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   150: aconst_null
    //   151: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   154: aload_1
    //   155: areturn
    //   156: astore_1
    //   157: aconst_null
    //   158: astore 7
    //   160: goto +65 -> 225
    //   163: astore 6
    //   165: aconst_null
    //   166: astore_1
    //   167: goto +25 -> 192
    //   170: astore 5
    //   172: aconst_null
    //   173: astore 7
    //   175: aload 4
    //   177: astore_1
    //   178: aload 5
    //   180: astore 4
    //   182: goto +49 -> 231
    //   185: astore 6
    //   187: aconst_null
    //   188: astore_1
    //   189: aload_1
    //   190: astore 5
    //   192: aload 5
    //   194: astore 4
    //   196: aload_1
    //   197: astore 7
    //   199: ldc 40
    //   201: ldc 174
    //   203: aload 6
    //   205: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   208: pop
    //   209: aload 5
    //   211: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   214: aload_1
    //   215: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   218: aconst_null
    //   219: areturn
    //   220: astore_1
    //   221: aload 4
    //   223: astore 5
    //   225: aload_1
    //   226: astore 4
    //   228: aload 5
    //   230: astore_1
    //   231: aload_1
    //   232: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   235: aload 7
    //   237: invokestatic 172	miuix/core/util/c:b	(Ljava/io/InputStream;)V
    //   240: aload 4
    //   242: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	this	BitmapProvider
    //   0	243	1	paramUri	Uri
    //   0	243	2	paramInt1	int
    //   0	243	3	paramInt2	int
    //   1	240	4	localObject1	Object
    //   20	126	5	localInputStream	java.io.InputStream
    //   170	9	5	localObject2	Object
    //   190	39	5	localObject3	Object
    //   33	97	6	localObject4	Object
    //   132	1	6	localException1	java.lang.Exception
    //   163	1	6	localException2	java.lang.Exception
    //   185	19	6	localException3	java.lang.Exception
    //   109	127	7	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   111	120	132	java/lang/Exception
    //   30	104	156	finally
    //   137	145	156	finally
    //   30	104	163	java/lang/Exception
    //   137	145	163	java/lang/Exception
    //   3	22	170	finally
    //   3	22	185	java/lang/Exception
    //   111	120	220	finally
    //   199	209	220	finally
  }
  
  public void init(String paramString)
  {
    reset();
  }
  
  public void reset() {}
  
  private static class AppIconProvider
    extends BitmapProvider
  {
    public static final String TAG_NAME = "ApplicationIcon";
    private String mCls;
    private boolean mNoIcon;
    private String mPkg;
    private String mSrc;
    
    public AppIconProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    private void parseSrc(String paramString)
    {
      this.mNoIcon = false;
      BitmapProvider.VersionedBitmap.access$002(this.mVersionedBitmap, null);
      Object localObject;
      if (!TextUtils.isEmpty(paramString))
      {
        localObject = paramString.split(",");
        if (localObject.length == 2)
        {
          this.mPkg = localObject[0];
          this.mCls = localObject[1];
        }
        else if (localObject.length == 1)
        {
          this.mPkg = localObject[0];
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("invalid src of ApplicationIcon type: ");
          ((StringBuilder)localObject).append(paramString);
          Log.e("BitmapProvider", ((StringBuilder)localObject).toString());
          this.mNoIcon = true;
        }
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("invalid src of ApplicationIcon type: ");
        ((StringBuilder)localObject).append(paramString);
        Log.e("BitmapProvider", ((StringBuilder)localObject).toString());
        this.mNoIcon = true;
      }
    }
    
    private void tryToSetBitmap()
    {
      try
      {
        Object localObject1;
        Object localObject2;
        if (this.mCls != null)
        {
          localObject1 = this.mRoot.getContext().mContext.getPackageManager();
          localObject2 = new android/content/ComponentName;
          ((ComponentName)localObject2).<init>(this.mPkg, this.mCls);
          localObject1 = ((PackageManager)localObject1).getActivityIcon((ComponentName)localObject2);
        }
        else
        {
          localObject1 = this.mRoot.getContext().mContext.getPackageManager().getApplicationIcon(this.mPkg);
        }
        if ((localObject1 instanceof BitmapDrawable))
        {
          this.mVersionedBitmap.setBitmap(((BitmapDrawable)localObject1).getBitmap());
        }
        else
        {
          int i = ((Drawable)localObject1).getIntrinsicWidth();
          int j = ((Drawable)localObject1).getIntrinsicHeight();
          if (((Drawable)localObject1).getOpacity() != -1) {
            localObject2 = Bitmap.Config.ARGB_8888;
          } else {
            localObject2 = Bitmap.Config.RGB_565;
          }
          Bitmap localBitmap = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject2);
          localObject2 = new android/graphics/Canvas;
          ((Canvas)localObject2).<init>(localBitmap);
          ((Drawable)localObject1).setBounds(0, 0, i, j);
          ((Drawable)localObject1).draw((Canvas)localObject2);
          this.mVersionedBitmap.setBitmap(localBitmap);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("fail to get icon for src of ApplicationIcon type: ");
        localStringBuilder.append(this.mSrc);
        Log.e("BitmapProvider", localStringBuilder.toString());
        this.mNoIcon = true;
      }
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (!TextUtils.equals(paramString, this.mSrc))
      {
        this.mSrc = paramString;
        parseSrc(paramString);
      }
      if ((this.mVersionedBitmap.getBitmap() == null) && (!this.mNoIcon)) {
        tryToSetBitmap();
      }
      return this.mVersionedBitmap;
    }
    
    public void init(String paramString)
    {
      super.init(paramString);
      this.mSrc = paramString;
      parseSrc(paramString);
    }
  }
  
  public static class BitmapHolderProvider
    extends BitmapProvider
  {
    public static final String TAG_NAME = "BitmapHolder";
    private BitmapProvider.IBitmapHolder mBitmapHolder;
    private String mId;
    
    public BitmapHolderProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      paramString = this.mBitmapHolder;
      if (paramString != null) {
        paramString = paramString.getBitmap(this.mId);
      } else {
        paramString = null;
      }
      return paramString;
    }
    
    public void init(String paramString)
    {
      super.init(paramString);
      if (TextUtils.isEmpty(paramString)) {
        return;
      }
      int i = paramString.indexOf('.');
      if (i != -1)
      {
        String str = paramString.substring(0, i);
        this.mId = paramString.substring(i + 1);
        paramString = str;
      }
      paramString = this.mRoot.findElement(paramString);
      if ((paramString instanceof BitmapProvider.IBitmapHolder)) {
        this.mBitmapHolder = ((BitmapProvider.IBitmapHolder)paramString);
      }
    }
  }
  
  public static class BitmapVariableProvider
    extends BitmapProvider
  {
    public static final String TAG_NAME = "BitmapVar";
    private String mCurSrc;
    private Expression mIndexExpression;
    private IndexedVariable mVar;
    
    public BitmapVariableProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      paramBoolean = Utils.equals(this.mCurSrc, paramString);
      Object localObject1 = null;
      Object localObject2;
      if (!paramBoolean)
      {
        this.mVar = null;
        this.mIndexExpression = null;
        if (!TextUtils.isEmpty(paramString))
        {
          paramInt1 = paramString.indexOf('[');
          paramInt2 = paramString.length();
          if (paramInt1 != -1)
          {
            paramInt2--;
            if ((paramInt1 < paramInt2) && (paramString.charAt(paramInt2) == ']')) {
              this.mIndexExpression = Expression.build(this.mRoot.getVariables(), paramString.substring(paramInt1 + 1, paramInt2));
            }
          }
          if (this.mIndexExpression == null) {
            localObject2 = paramString;
          } else {
            localObject2 = paramString.substring(0, paramInt1);
          }
          this.mVar = new IndexedVariable((String)localObject2, this.mRoot.getVariables(), false);
        }
        this.mCurSrc = paramString;
      }
      Object localObject3;
      try
      {
        IndexedVariable localIndexedVariable = this.mVar;
        localObject2 = localObject1;
        if (localIndexedVariable != null)
        {
          localObject2 = this.mIndexExpression;
          if (localObject2 != null)
          {
            localObject2 = (Bitmap)localIndexedVariable.getArr((int)((Expression)localObject2).evaluate());
            paramString = (String)localObject2;
          }
          else
          {
            localObject2 = (Bitmap)localIndexedVariable.get();
            paramString = (String)localObject2;
          }
          localObject2 = paramString;
        }
      }
      catch (ClassCastException localClassCastException)
      {
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("fail to cast as Bitmap from object: ");
        ((StringBuilder)localObject3).append(paramString);
        Log.w("BitmapProvider", ((StringBuilder)localObject3).toString());
        localObject3 = localObject1;
      }
      this.mVersionedBitmap.setBitmap((Bitmap)localObject3);
      return this.mVersionedBitmap;
    }
    
    public void init(String paramString)
    {
      super.init(paramString);
      if (TextUtils.isEmpty(paramString)) {
        return;
      }
      this.mVar = new IndexedVariable(paramString, this.mRoot.getVariables(), false);
      this.mCurSrc = paramString;
    }
  }
  
  private static class FileSystemProvider
    extends BitmapProvider.UriProvider
  {
    public static final String TAG_NAME = "FileSystem";
    
    public FileSystemProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (TextUtils.isEmpty(paramString))
      {
        this.mVersionedBitmap.setBitmap(null);
        return this.mVersionedBitmap;
      }
      paramString = new File(paramString).toURI();
      if (paramString == null)
      {
        this.mVersionedBitmap.setBitmap(null);
        return this.mVersionedBitmap;
      }
      return super.getBitmap(paramString.toString(), paramBoolean, paramInt1, paramInt2);
    }
  }
  
  public static abstract interface IBitmapHolder
  {
    public abstract BitmapProvider.VersionedBitmap getBitmap(String paramString);
  }
  
  private static class ResourceImageProvider
    extends BitmapProvider
  {
    public static final String TAG_NAME = "ResourceImage";
    private ResourceManager.AsyncLoadListener mAsyncLoadListener = new ResourceManager.AsyncLoadListener()
    {
      public void onLoadComplete(String paramAnonymousString, ResourceManager.BitmapInfo paramAnonymousBitmapInfo)
      {
        synchronized (BitmapProvider.ResourceImageProvider.this.mSrcNameLock)
        {
          if (TextUtils.equals(paramAnonymousString, BitmapProvider.ResourceImageProvider.this.mLoadingBitmapName))
          {
            Object localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append("load image async complete: ");
            ((StringBuilder)localObject2).append(paramAnonymousString);
            ((StringBuilder)localObject2).append(" last cached ");
            ((StringBuilder)localObject2).append(BitmapProvider.ResourceImageProvider.this.mCachedBitmapName);
            Log.i("BitmapProvider", ((StringBuilder)localObject2).toString());
            localObject2 = BitmapProvider.ResourceImageProvider.this.mVersionedBitmap;
            if (paramAnonymousBitmapInfo == null) {
              paramAnonymousBitmapInfo = null;
            } else {
              paramAnonymousBitmapInfo = paramAnonymousBitmapInfo.mBitmap;
            }
            ((BitmapProvider.VersionedBitmap)localObject2).setBitmap(paramAnonymousBitmapInfo);
            BitmapProvider.ResourceImageProvider.access$102(BitmapProvider.ResourceImageProvider.this, paramAnonymousString);
            BitmapProvider.ResourceImageProvider.this.mLoadingBitmapName = null;
          }
          else
          {
            paramAnonymousBitmapInfo = new java/lang/StringBuilder;
            paramAnonymousBitmapInfo.<init>();
            paramAnonymousBitmapInfo.append("load image async complete: ");
            paramAnonymousBitmapInfo.append(paramAnonymousString);
            paramAnonymousBitmapInfo.append(" not equals ");
            paramAnonymousBitmapInfo.append(BitmapProvider.ResourceImageProvider.this.mLoadingBitmapName);
            Log.i("BitmapProvider", paramAnonymousBitmapInfo.toString());
          }
          BitmapProvider.ResourceImageProvider.this.mRoot.requestUpdate();
          return;
        }
      }
    };
    private String mCachedBitmapName;
    String mLoadingBitmapName;
    Object mSrcNameLock = new Object();
    
    public ResourceImageProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    public void finish()
    {
      super.finish();
      synchronized (this.mSrcNameLock)
      {
        this.mLoadingBitmapName = null;
        this.mCachedBitmapName = null;
        this.mVersionedBitmap.reset();
        return;
      }
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      Object localObject1 = this.mVersionedBitmap.getBitmap();
      if (((localObject1 != null) && (((Bitmap)localObject1).isRecycled())) || (!TextUtils.equals(this.mCachedBitmapName, paramString)))
      {
        localObject1 = null;
        Object localObject2;
        Object localObject3;
        if (paramBoolean)
        {
          localObject2 = this.mRoot.getContext().mResourceManager.getBitmapInfo(paramString);
          localObject3 = this.mVersionedBitmap;
          if (localObject2 != null) {
            localObject1 = ((ResourceManager.BitmapInfo)localObject2).mBitmap;
          }
          ((BitmapProvider.VersionedBitmap)localObject3).setBitmap((Bitmap)localObject1);
          this.mCachedBitmapName = paramString;
        }
        else
        {
          localObject1 = this.mRoot.getContext().mResourceManager.getBitmapInfoAsync(paramString, this.mAsyncLoadListener);
          localObject3 = this.mSrcNameLock;
          if (localObject1 != null) {}
          try
          {
            if (((ResourceManager.BitmapInfo)localObject1).mLoading)
            {
              this.mLoadingBitmapName = paramString;
            }
            else
            {
              localObject2 = this.mVersionedBitmap;
              if (localObject1 == null) {
                localObject1 = null;
              } else {
                localObject1 = ((ResourceManager.BitmapInfo)localObject1).mBitmap;
              }
              ((BitmapProvider.VersionedBitmap)localObject2).setBitmap((Bitmap)localObject1);
              this.mCachedBitmapName = paramString;
              this.mLoadingBitmapName = null;
            }
          }
          finally {}
        }
      }
      return this.mVersionedBitmap;
    }
  }
  
  private static class UriProvider
    extends BitmapProvider
  {
    public static final String TAG_NAME = "Uri";
    private String mCachedBitmapUri;
    private String mCurLoadingBitmapUri;
    private Object mLock = new Object();
    
    public UriProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    public void finish()
    {
      super.finish();
      synchronized (this.mLock)
      {
        this.mCachedBitmapUri = null;
        this.mCurLoadingBitmapUri = null;
        this.mVersionedBitmap.reset();
        return;
      }
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (TextUtils.isEmpty(paramString))
      {
        this.mVersionedBitmap.setBitmap(null);
        return this.mVersionedBitmap;
      }
      Bitmap localBitmap = this.mVersionedBitmap.getBitmap();
      if (((localBitmap != null) && (localBitmap.isRecycled())) || (!TextUtils.equals(this.mCachedBitmapUri, paramString))) {
        synchronized (this.mLock)
        {
          if ((!TextUtils.equals(this.mCurLoadingBitmapUri, paramString)) && (!TextUtils.equals(this.mCachedBitmapUri, paramString)))
          {
            this.mCurLoadingBitmapUri = paramString;
            LoaderAsyncTask localLoaderAsyncTask = new com/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
            localLoaderAsyncTask.<init>(this, paramString, paramInt1, paramInt2);
            localLoaderAsyncTask.execute(new Object[0]);
          }
        }
      }
      this.mVersionedBitmap.setBitmap(localBitmap);
      return this.mVersionedBitmap;
    }
    
    private class LoaderAsyncTask
      extends AsyncTask<Object, Object, Bitmap>
    {
      private int mHeight;
      private String mUri;
      private int mWidth;
      
      public LoaderAsyncTask(String paramString, int paramInt1, int paramInt2)
      {
        this.mUri = paramString;
        this.mWidth = paramInt1;
        this.mHeight = paramInt2;
      }
      
      protected Bitmap doInBackground(Object... arg1)
      {
        Bitmap localBitmap = BitmapProvider.UriProvider.this.getBitmapFromUri(Uri.parse(this.mUri), this.mWidth, this.mHeight);
        if (localBitmap == null)
        {
          ??? = new StringBuilder();
          ???.append("fail to decode bitmap: ");
          ???.append(this.mUri);
          Log.w("BitmapProvider", ???.toString());
        }
        synchronized (BitmapProvider.UriProvider.this.mLock)
        {
          if (TextUtils.equals(this.mUri, BitmapProvider.UriProvider.this.mCurLoadingBitmapUri))
          {
            BitmapProvider.UriProvider.this.mVersionedBitmap.setBitmap(localBitmap);
            BitmapProvider.UriProvider localUriProvider = BitmapProvider.UriProvider.this;
            BitmapProvider.UriProvider.access$402(localUriProvider, localUriProvider.mCurLoadingBitmapUri);
            BitmapProvider.UriProvider.this.mRoot.requestUpdate();
            BitmapProvider.UriProvider.access$302(BitmapProvider.UriProvider.this, null);
          }
          return localBitmap;
        }
      }
    }
  }
  
  public static class VersionedBitmap
  {
    private Bitmap mBitmap;
    private int mVersion;
    
    public VersionedBitmap(Bitmap paramBitmap)
    {
      this.mBitmap = paramBitmap;
    }
    
    public static boolean equals(VersionedBitmap paramVersionedBitmap1, VersionedBitmap paramVersionedBitmap2)
    {
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (paramVersionedBitmap1 != null) {
        if (paramVersionedBitmap2 == null)
        {
          bool2 = bool1;
        }
        else
        {
          bool2 = bool1;
          if (paramVersionedBitmap1.mBitmap == paramVersionedBitmap2.mBitmap)
          {
            bool2 = bool1;
            if (paramVersionedBitmap1.mVersion == paramVersionedBitmap2.mVersion) {
              bool2 = true;
            }
          }
        }
      }
      return bool2;
    }
    
    public Bitmap getBitmap()
    {
      return this.mBitmap;
    }
    
    public void reset()
    {
      this.mBitmap = null;
      this.mVersion = 0;
    }
    
    public void set(VersionedBitmap paramVersionedBitmap)
    {
      if (paramVersionedBitmap != null)
      {
        this.mBitmap = paramVersionedBitmap.mBitmap;
        this.mVersion = paramVersionedBitmap.mVersion;
      }
      else
      {
        reset();
      }
    }
    
    public boolean setBitmap(Bitmap paramBitmap)
    {
      Bitmap localBitmap = this.mBitmap;
      boolean bool = true;
      if (paramBitmap != localBitmap)
      {
        this.mBitmap = paramBitmap;
        this.mVersion += 1;
      }
      if (paramBitmap == this.mBitmap) {
        bool = false;
      }
      return bool;
    }
    
    public int updateVersion()
    {
      int i = this.mVersion;
      this.mVersion = (i + 1);
      return i;
    }
  }
  
  private static class VirtualScreenProvider
    extends BitmapProvider
  {
    public static final String TAG_NAME = "VirtualScreen";
    private VirtualScreen mVirtualScreen;
    
    public VirtualScreenProvider(ScreenElementRoot paramScreenElementRoot)
    {
      super();
    }
    
    public BitmapProvider.VersionedBitmap getBitmap(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      BitmapProvider.VersionedBitmap localVersionedBitmap = this.mVersionedBitmap;
      paramString = this.mVirtualScreen;
      if (paramString != null) {
        paramString = paramString.getBitmap();
      } else {
        paramString = null;
      }
      localVersionedBitmap.setBitmap(paramString);
      return this.mVersionedBitmap;
    }
    
    public void init(String paramString)
    {
      super.init(paramString);
      paramString = this.mRoot.findElement(paramString);
      if ((paramString instanceof VirtualScreen)) {
        this.mVirtualScreen = ((VirtualScreen)paramString);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.BitmapProvider
 * JD-Core Version:    0.7.0.1
 */