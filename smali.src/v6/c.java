package v6;

import android.accounts.Account;
import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import b7.r;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import z6.d;

public class c
  extends com.xiaomi.passport.ui.settings.b
{
  private g a;
  private File b;
  private Uri c;
  private Account d;
  
  private static void g(Intent paramIntent, int paramInt)
  {
    paramIntent.putExtra("crop", "true");
    paramIntent.putExtra("scale", true);
    paramIntent.putExtra("scaleUpIfNeeded", true);
    if ((!d.c()) && (!d.e()))
    {
      paramIntent.putExtra("aspectX", 1);
      paramIntent.putExtra("aspectY", 1);
    }
    else
    {
      paramIntent.putExtra("aspectX", 9998);
      paramIntent.putExtra("aspectY", 9999);
    }
    if ((!d.c()) && (!d.d()) && (!d.e()))
    {
      paramIntent.putExtra("outputX", paramInt);
      paramIntent.putExtra("outputY", paramInt);
    }
    else
    {
      paramIntent.putExtra("outputX", 200);
      paramIntent.putExtra("outputY", 200);
    }
    paramIntent.putExtra("return-data", true);
  }
  
  private boolean h(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    while (j < i)
    {
      int k = paramArrayOfInt[j];
      try
      {
        getString(k);
        j++;
      }
      catch (Resources.NotFoundException paramArrayOfInt)
      {
        return false;
      }
    }
    return true;
  }
  
  private void i()
  {
    final SharedPreferences localSharedPreferences = getActivity().getSharedPreferences(this.d.name, 0);
    if (localSharedPreferences.getBoolean("agreed_gallery_pick_request", false))
    {
      r();
      return;
    }
    a7.b localb = new a7.b(getContext());
    localb.h(getString(n5.g.y0)).k(getString(n5.g.s0), new e(localSharedPreferences)).i(getString(n5.g.u0), new d());
    localb.setCancelable(false);
    localb.show();
  }
  
  private void j()
  {
    final Activity localActivity = getActivity();
    if (androidx.core.content.a.a(localActivity, "android.permission.CAMERA") != 0)
    {
      int[] arrayOfInt = new int[3];
      arrayOfInt[0] = n5.g.t0;
      arrayOfInt[1] = n5.g.h0;
      arrayOfInt[2] = n5.g.o0;
      if (h(arrayOfInt))
      {
        a7.b localb = new a7.b(getContext());
        localb.k(getString(arrayOfInt[1]), null).i(getString(17039360), null).h(getString(arrayOfInt[0]));
        if (y6.b.b(localActivity, "android.permission.CAMERA")) {
          localb.i(getString(arrayOfInt[2]), new b(localActivity));
        }
        localb.setCancelable(false);
        localb.setOnDismissListener(new c());
        localb.show();
      }
      else
      {
        s();
      }
    }
    else
    {
      t();
    }
  }
  
  private void k(File paramFile)
  {
    if (paramFile == null) {
      return;
    }
    if ((paramFile.exists()) && (paramFile.isFile())) {
      paramFile.delete();
    }
  }
  
  private void l(Uri paramUri)
  {
    if (paramUri == null)
    {
      com.xiaomi.accountsdk.utils.b.g("UserAvatarUpdateFragment", "inputUri is null");
      return;
    }
    try
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>("com.android.camera.action.CROP");
      Uri localUri = p();
      localIntent.setDataAndType(paramUri, "image/*");
      localIntent.putExtra("output", localUri);
      localIntent.addFlags(1);
      localIntent.putExtra("return-data", true);
      Activity localActivity = getActivity();
      Iterator localIterator = localActivity.getPackageManager().queryIntentActivities(localIntent, 0).iterator();
      while (localIterator.hasNext())
      {
        String str = ((ResolveInfo)localIterator.next()).activityInfo.packageName;
        localActivity.grantUriPermission(str, paramUri, 1);
        localActivity.grantUriPermission(str, localUri, 2);
      }
      localIntent.putExtra("tips", getString(n5.g.d));
      g(localIntent, q());
      startActivityForResult(localIntent, 1004);
    }
    catch (Exception paramUri)
    {
      com.xiaomi.accountsdk.utils.b.h("UserAvatarUpdateFragment", "Cannot crop image", paramUri);
      z6.a.b(getActivity(), n5.g.p0, 1);
    }
  }
  
  private void m()
  {
    getActivity().overridePendingTransition(0, 0);
    getActivity().finish();
  }
  
  private String n()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getActivity().getPackageName());
    localStringBuilder.append(".passport.fileprovider");
    return localStringBuilder.toString();
  }
  
  private File o()
  {
    if (this.b == null) {
      this.b = new File(getActivity().getCacheDir(), "xiaomi_user_avatar_file");
    }
    return this.b;
  }
  
  private Uri p()
  {
    if (this.c == null) {
      this.c = androidx.core.content.b.f(getActivity(), n(), o());
    }
    return this.c;
  }
  
  private int q()
  {
    return getResources().getDimensionPixelSize(n5.c.k);
  }
  
  private void r()
  {
    Intent localIntent = new Intent("android.intent.action.PICK");
    localIntent.setType("image/*");
    startActivityForResult(localIntent, 1003);
  }
  
  private void s()
  {
    getActivity();
    requestPermissions(new String[] { "android.permission.CAMERA" }, 100);
  }
  
  private void t()
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", p());
    localIntent.addFlags(2);
    startActivityForResult(localIntent, 1002);
  }
  
  private void u(Bitmap paramBitmap)
  {
    g localg = this.a;
    if (localg != null)
    {
      localg.cancel(true);
      this.a = null;
    }
    paramBitmap = new g(getActivity(), paramBitmap);
    this.a = paramBitmap;
    paramBitmap.executeOnExecutor(r.a(), new Void[0]);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (com.xiaomi.passport.accountmanager.g.z(getActivity()).l() == null)
    {
      com.xiaomi.accountsdk.utils.b.g("UserAvatarUpdateFragment", "no xiaomi account");
      m();
    }
    paramBundle = getActivity().findViewById(16908290);
    if (paramBundle != null) {
      paramBundle.setOnClickListener(new a());
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Uri localUri = null;
    int i = 0;
    switch (paramInt1)
    {
    default: 
      break;
    case 1004: 
      if ((paramIntent != null) && (paramIntent.getExtras() != null))
      {
        paramIntent = paramIntent.getExtras().get("data");
        if ((paramIntent instanceof Bitmap)) {
          u((Bitmap)paramIntent);
        }
      }
      else
      {
        paramInt1 = i;
        if (paramInt2 != -1) {
          break label137;
        }
        u(null);
      }
      break;
    case 1002: 
    case 1003: 
      paramInt1 = i;
      if (paramInt2 != -1) {
        break label137;
      }
      if (paramIntent != null) {
        localUri = paramIntent.getData();
      }
      paramIntent = localUri;
      if (localUri == null) {
        paramIntent = p();
      }
      l(paramIntent);
    }
    paramInt1 = 1;
    label137:
    if (paramInt1 == 0) {
      m();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getActivity().getPackageManager().hasSystemFeature("android.hardware.camera")) {
      com.xiaomi.accountsdk.utils.b.g("UserAvatarUpdateFragment", "has camera");
    } else {
      com.xiaomi.accountsdk.utils.b.g("UserAvatarUpdateFragment", "no camera");
    }
    this.d = ((Account)getArguments().getParcelable("update_account"));
    paramBundle = getArguments().getString("update_avatar_type");
    if ("camera".equals(paramBundle)) {
      j();
    } else if ("gallery".equals(paramBundle)) {
      i();
    } else {
      m();
    }
  }
  
  public void onDestroy()
  {
    g localg = this.a;
    if (localg != null)
    {
      localg.cancel(true);
      this.a = null;
    }
    super.onDestroy();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    if (paramInt == 100)
    {
      y6.b.c(getActivity(), "android.permission.CAMERA");
      if ((paramArrayOfInt.length > 0) && (paramArrayOfInt[0] == 0)) {
        t();
      } else {
        m();
      }
    }
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      c.b(c.this);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(Activity paramActivity) {}
    
    public void onClick(View paramView)
    {
      y6.c.b(localActivity, 2000);
    }
  }
  
  class c
    implements DialogInterface.OnDismissListener
  {
    c() {}
    
    public void onDismiss(DialogInterface paramDialogInterface)
    {
      c.c(c.this);
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d() {}
    
    public void onClick(View paramView)
    {
      c.b(c.this);
    }
  }
  
  class e
    implements View.OnClickListener
  {
    e(SharedPreferences paramSharedPreferences) {}
    
    public void onClick(View paramView)
    {
      c.d(c.this);
      localSharedPreferences.edit().putBoolean("agreed_gallery_pick_request", true).commit();
    }
  }
  
  private class f
  {
    int a;
    public Bitmap b;
    
    f(int paramInt, Bitmap paramBitmap)
    {
      this.a = paramInt;
      this.b = paramBitmap;
    }
  }
  
  private class g
    extends AsyncTask<Void, Void, c.f>
  {
    private final Bitmap a;
    private a7.b b;
    private Context c;
    
    g(Context paramContext, Bitmap paramBitmap)
    {
      this.a = paramBitmap;
      this.c = paramContext.getApplicationContext();
      paramContext = new a7.b(c.this.getActivity());
      this.b = paramContext;
      paramContext.f(true);
      this.b.h(c.this.getString(n5.g.X0));
      this.b.setCancelable(false);
      this.b.setOnDismissListener(new a(c.this));
      this.b.show();
    }
    
    /* Error */
    protected c.f a(Void... paramVarArgs)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 35	v6/c$g:c	Landroid/content/Context;
      //   4: invokestatic 102	com/xiaomi/passport/accountmanager/g:z	(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;
      //   7: invokevirtual 106	com/xiaomi/passport/accountmanager/g:l	()Landroid/accounts/Account;
      //   10: astore_2
      //   11: aconst_null
      //   12: astore_3
      //   13: aload_2
      //   14: ifnonnull +12 -> 26
      //   17: ldc 108
      //   19: ldc 110
      //   21: invokestatic 115	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
      //   24: aconst_null
      //   25: areturn
      //   26: aload_0
      //   27: getfield 22	v6/c$g:d	Lv6/c;
      //   30: invokestatic 119	v6/c:e	(Lv6/c;)Ljava/io/File;
      //   33: astore 4
      //   35: aload_0
      //   36: getfield 27	v6/c$g:a	Landroid/graphics/Bitmap;
      //   39: astore_1
      //   40: aload_1
      //   41: ifnull +33 -> 74
      //   44: aload_1
      //   45: aload 4
      //   47: invokevirtual 125	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   50: invokestatic 130	com/xiaomi/passport/ui/internal/util/a:g	(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
      //   53: pop
      //   54: aload_0
      //   55: getfield 27	v6/c$g:a	Landroid/graphics/Bitmap;
      //   58: astore 5
      //   60: goto +24 -> 84
      //   63: astore_1
      //   64: aload_1
      //   65: invokevirtual 135	java/lang/Throwable:printStackTrace	()V
      //   68: aconst_null
      //   69: astore 5
      //   71: goto +13 -> 84
      //   74: aload 4
      //   76: invokevirtual 138	java/io/File:getPath	()Ljava/lang/String;
      //   79: invokestatic 144	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;)Landroid/graphics/Bitmap;
      //   82: astore 5
      //   84: aload 5
      //   86: ifnonnull +14 -> 100
      //   89: aload_0
      //   90: getfield 22	v6/c$g:d	Lv6/c;
      //   93: aload 4
      //   95: invokestatic 147	v6/c:f	(Lv6/c;Ljava/io/File;)V
      //   98: aconst_null
      //   99: areturn
      //   100: aload_0
      //   101: getfield 35	v6/c$g:c	Landroid/content/Context;
      //   104: invokestatic 102	com/xiaomi/passport/accountmanager/g:z	(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;
      //   107: astore 6
      //   109: aload_0
      //   110: getfield 22	v6/c$g:d	Lv6/c;
      //   113: invokevirtual 43	android/app/Fragment:getActivity	()Landroid/app/Activity;
      //   116: ldc 149
      //   118: invokestatic 154	com/xiaomi/passport/data/a:h	(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/a;
      //   121: astore 7
      //   123: iconst_0
      //   124: istore 8
      //   126: iconst_m1
      //   127: istore 9
      //   129: aconst_null
      //   130: astore_1
      //   131: aload_1
      //   132: astore 10
      //   134: iload 9
      //   136: istore 11
      //   138: iload 8
      //   140: iconst_2
      //   141: if_icmpge +772 -> 913
      //   144: aload_3
      //   145: astore 10
      //   147: aload_1
      //   148: astore 12
      //   150: aload_1
      //   151: astore 13
      //   153: aload_1
      //   154: astore 14
      //   156: aload_1
      //   157: astore 15
      //   159: aload_1
      //   160: astore 16
      //   162: aload_1
      //   163: astore 17
      //   165: aload 6
      //   167: aload_2
      //   168: ldc 156
      //   170: aload 7
      //   172: aload 5
      //   174: invokestatic 162	com/xiaomi/accountsdk/account/XMPassport:F	(Lcom/xiaomi/accountsdk/account/data/c;Landroid/graphics/Bitmap;)Ljava/lang/String;
      //   177: invokevirtual 166	com/xiaomi/passport/accountmanager/g:u	(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
      //   180: aload_3
      //   181: astore 10
      //   183: aload_1
      //   184: astore 12
      //   186: aload_1
      //   187: astore 13
      //   189: aload_1
      //   190: astore 14
      //   192: aload_1
      //   193: astore 15
      //   195: aload_1
      //   196: astore 16
      //   198: aload_1
      //   199: astore 17
      //   201: aload_0
      //   202: getfield 22	v6/c$g:d	Lv6/c;
      //   205: invokevirtual 43	android/app/Fragment:getActivity	()Landroid/app/Activity;
      //   208: aload 5
      //   210: aload_0
      //   211: getfield 22	v6/c$g:d	Lv6/c;
      //   214: invokevirtual 43	android/app/Fragment:getActivity	()Landroid/app/Activity;
      //   217: invokevirtual 170	android/content/Context:getResources	()Landroid/content/res/Resources;
      //   220: getstatic 174	n5/c:f	I
      //   223: invokevirtual 180	android/content/res/Resources:getDimensionPixelSize	(I)I
      //   226: invokestatic 183	com/xiaomi/passport/ui/internal/util/a:d	(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
      //   229: astore_1
      //   230: aload_3
      //   231: astore 10
      //   233: aload_1
      //   234: astore 12
      //   236: aload_1
      //   237: astore 13
      //   239: aload_1
      //   240: astore 14
      //   242: aload_1
      //   243: astore 15
      //   245: aload_1
      //   246: astore 16
      //   248: aload_1
      //   249: astore 17
      //   251: new 185	java/io/FileInputStream
      //   254: astore 18
      //   256: aload_3
      //   257: astore 10
      //   259: aload_1
      //   260: astore 12
      //   262: aload_1
      //   263: astore 13
      //   265: aload_1
      //   266: astore 14
      //   268: aload_1
      //   269: astore 15
      //   271: aload_1
      //   272: astore 16
      //   274: aload_1
      //   275: astore 17
      //   277: aload 18
      //   279: aload 4
      //   281: invokespecial 188	java/io/FileInputStream:<init>	(Ljava/io/File;)V
      //   284: aload 18
      //   286: astore_3
      //   287: new 190	java/lang/StringBuilder
      //   290: astore 10
      //   292: aload 18
      //   294: astore_3
      //   295: aload 10
      //   297: invokespecial 191	java/lang/StringBuilder:<init>	()V
      //   300: aload 18
      //   302: astore_3
      //   303: aload 10
      //   305: ldc 193
      //   307: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   310: pop
      //   311: aload 18
      //   313: astore_3
      //   314: aload 10
      //   316: aload_2
      //   317: getfield 203	android/accounts/Account:name	Ljava/lang/String;
      //   320: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   323: pop
      //   324: aload 18
      //   326: astore_3
      //   327: aload 10
      //   329: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   332: astore 10
      //   334: aload 18
      //   336: astore_3
      //   337: aload_0
      //   338: getfield 22	v6/c$g:d	Lv6/c;
      //   341: invokevirtual 43	android/app/Fragment:getActivity	()Landroid/app/Activity;
      //   344: aload 18
      //   346: aload 10
      //   348: invokestatic 211	x5/c:d	(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
      //   351: pop
      //   352: aload 18
      //   354: astore_3
      //   355: aload 6
      //   357: aload_2
      //   358: ldc 213
      //   360: aload 10
      //   362: invokevirtual 166	com/xiaomi/passport/accountmanager/g:u	(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
      //   365: aload 18
      //   367: invokevirtual 216	java/io/FileInputStream:close	()V
      //   370: goto +481 -> 851
      //   373: astore_3
      //   374: goto +469 -> 843
      //   377: astore 16
      //   379: aload 18
      //   381: astore_3
      //   382: aload_1
      //   383: astore 18
      //   385: goto +62 -> 447
      //   388: astore 16
      //   390: aload 18
      //   392: astore_3
      //   393: aload_1
      //   394: astore 18
      //   396: goto +113 -> 509
      //   399: astore 16
      //   401: aload 18
      //   403: astore_3
      //   404: aload_1
      //   405: astore 18
      //   407: goto +164 -> 571
      //   410: astore 16
      //   412: aload 18
      //   414: astore_3
      //   415: aload_1
      //   416: astore 18
      //   418: goto +215 -> 633
      //   421: astore 10
      //   423: goto +274 -> 697
      //   426: astore 16
      //   428: aload 18
      //   430: astore_3
      //   431: aload_1
      //   432: astore 18
      //   434: goto +356 -> 790
      //   437: astore_1
      //   438: goto +437 -> 875
      //   441: astore 16
      //   443: aload 12
      //   445: astore 18
      //   447: aload_3
      //   448: astore 10
      //   450: ldc 108
      //   452: ldc 218
      //   454: aload 16
      //   456: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   459: aload_3
      //   460: astore 10
      //   462: getstatic 224	n5/g:k	I
      //   465: istore 8
      //   467: aload 18
      //   469: astore_1
      //   470: iload 8
      //   472: istore 9
      //   474: aload_3
      //   475: ifnull +376 -> 851
      //   478: aload_3
      //   479: invokevirtual 216	java/io/FileInputStream:close	()V
      //   482: aload 18
      //   484: astore_1
      //   485: iload 8
      //   487: istore 9
      //   489: goto +362 -> 851
      //   492: astore_3
      //   493: aload 18
      //   495: astore_1
      //   496: iload 8
      //   498: istore 9
      //   500: goto +343 -> 843
      //   503: astore 16
      //   505: aload 13
      //   507: astore 18
      //   509: aload_3
      //   510: astore 10
      //   512: ldc 108
      //   514: ldc 218
      //   516: aload 16
      //   518: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   521: aload_3
      //   522: astore 10
      //   524: getstatic 227	n5/g:W	I
      //   527: istore 8
      //   529: aload 18
      //   531: astore_1
      //   532: iload 8
      //   534: istore 9
      //   536: aload_3
      //   537: ifnull +314 -> 851
      //   540: aload_3
      //   541: invokevirtual 216	java/io/FileInputStream:close	()V
      //   544: aload 18
      //   546: astore_1
      //   547: iload 8
      //   549: istore 9
      //   551: goto +300 -> 851
      //   554: astore_3
      //   555: aload 18
      //   557: astore_1
      //   558: iload 8
      //   560: istore 9
      //   562: goto +281 -> 843
      //   565: astore 16
      //   567: aload 14
      //   569: astore 18
      //   571: aload_3
      //   572: astore 10
      //   574: ldc 108
      //   576: ldc 218
      //   578: aload 16
      //   580: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   583: aload_3
      //   584: astore 10
      //   586: getstatic 227	n5/g:W	I
      //   589: istore 8
      //   591: aload 18
      //   593: astore_1
      //   594: iload 8
      //   596: istore 9
      //   598: aload_3
      //   599: ifnull +252 -> 851
      //   602: aload_3
      //   603: invokevirtual 216	java/io/FileInputStream:close	()V
      //   606: aload 18
      //   608: astore_1
      //   609: iload 8
      //   611: istore 9
      //   613: goto +238 -> 851
      //   616: astore_3
      //   617: aload 18
      //   619: astore_1
      //   620: iload 8
      //   622: istore 9
      //   624: goto +219 -> 843
      //   627: astore 16
      //   629: aload 15
      //   631: astore 18
      //   633: aload_3
      //   634: astore 10
      //   636: ldc 108
      //   638: ldc 218
      //   640: aload 16
      //   642: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   645: aload_3
      //   646: astore 10
      //   648: getstatic 229	n5/g:c	I
      //   651: istore 8
      //   653: aload 18
      //   655: astore_1
      //   656: iload 8
      //   658: istore 9
      //   660: aload_3
      //   661: ifnull +190 -> 851
      //   664: aload_3
      //   665: invokevirtual 216	java/io/FileInputStream:close	()V
      //   668: aload 18
      //   670: astore_1
      //   671: iload 8
      //   673: istore 9
      //   675: goto +176 -> 851
      //   678: astore_3
      //   679: aload 18
      //   681: astore_1
      //   682: iload 8
      //   684: istore 9
      //   686: goto +157 -> 843
      //   689: astore 10
      //   691: aload_3
      //   692: astore 18
      //   694: aload 16
      //   696: astore_1
      //   697: aload 18
      //   699: astore_3
      //   700: ldc 108
      //   702: ldc 218
      //   704: aload 10
      //   706: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   709: aload 18
      //   711: astore_3
      //   712: aload 7
      //   714: aload_0
      //   715: getfield 22	v6/c$g:d	Lv6/c;
      //   718: invokevirtual 43	android/app/Fragment:getActivity	()Landroid/app/Activity;
      //   721: invokevirtual 232	com/xiaomi/passport/data/a:i	(Landroid/content/Context;)V
      //   724: aload 18
      //   726: astore_3
      //   727: getstatic 234	n5/g:z	I
      //   730: istore 9
      //   732: aload 18
      //   734: ifnull +20 -> 754
      //   737: aload 18
      //   739: invokevirtual 216	java/io/FileInputStream:close	()V
      //   742: goto +12 -> 754
      //   745: astore_3
      //   746: ldc 108
      //   748: ldc 236
      //   750: aload_3
      //   751: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   754: aload_0
      //   755: getfield 22	v6/c$g:d	Lv6/c;
      //   758: aload 4
      //   760: invokestatic 147	v6/c:f	(Lv6/c;Ljava/io/File;)V
      //   763: aload 5
      //   765: invokevirtual 241	android/graphics/Bitmap:recycle	()V
      //   768: iinc 8 1
      //   771: aload 18
      //   773: astore_3
      //   774: goto -643 -> 131
      //   777: astore_1
      //   778: aload_3
      //   779: astore 10
      //   781: goto +94 -> 875
      //   784: astore 16
      //   786: aload 17
      //   788: astore 18
      //   790: aload_3
      //   791: astore 10
      //   793: ldc 108
      //   795: ldc 218
      //   797: aload 16
      //   799: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   802: aload_3
      //   803: astore 10
      //   805: getstatic 244	n5/g:T	I
      //   808: istore 8
      //   810: aload 18
      //   812: astore_1
      //   813: iload 8
      //   815: istore 9
      //   817: aload_3
      //   818: ifnull +33 -> 851
      //   821: aload_3
      //   822: invokevirtual 216	java/io/FileInputStream:close	()V
      //   825: aload 18
      //   827: astore_1
      //   828: iload 8
      //   830: istore 9
      //   832: goto +19 -> 851
      //   835: astore_3
      //   836: iload 8
      //   838: istore 9
      //   840: aload 18
      //   842: astore_1
      //   843: ldc 108
      //   845: ldc 236
      //   847: aload_3
      //   848: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   851: aload_0
      //   852: getfield 22	v6/c$g:d	Lv6/c;
      //   855: aload 4
      //   857: invokestatic 147	v6/c:f	(Lv6/c;Ljava/io/File;)V
      //   860: aload 5
      //   862: invokevirtual 241	android/graphics/Bitmap:recycle	()V
      //   865: aload_1
      //   866: astore 10
      //   868: iload 9
      //   870: istore 11
      //   872: goto +41 -> 913
      //   875: aload 10
      //   877: ifnull +20 -> 897
      //   880: aload 10
      //   882: invokevirtual 216	java/io/FileInputStream:close	()V
      //   885: goto +12 -> 897
      //   888: astore_3
      //   889: ldc 108
      //   891: ldc 236
      //   893: aload_3
      //   894: invokestatic 221	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   897: aload_0
      //   898: getfield 22	v6/c$g:d	Lv6/c;
      //   901: aload 4
      //   903: invokestatic 147	v6/c:f	(Lv6/c;Ljava/io/File;)V
      //   906: aload 5
      //   908: invokevirtual 241	android/graphics/Bitmap:recycle	()V
      //   911: aload_1
      //   912: athrow
      //   913: new 246	v6/c$f
      //   916: dup
      //   917: aload_0
      //   918: getfield 22	v6/c$g:d	Lv6/c;
      //   921: iload 11
      //   923: aload 10
      //   925: invokespecial 249	v6/c$f:<init>	(Lv6/c;ILandroid/graphics/Bitmap;)V
      //   928: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	929	0	this	g
      //   0	929	1	paramVarArgs	Void[]
      //   10	348	2	localAccount	Account
      //   12	343	3	localObject1	Object
      //   373	1	3	localIOException1	java.io.IOException
      //   381	98	3	localObject2	Object
      //   492	49	3	localIOException2	java.io.IOException
      //   554	49	3	localIOException3	java.io.IOException
      //   616	49	3	localIOException4	java.io.IOException
      //   678	14	3	localIOException5	java.io.IOException
      //   699	28	3	localObject3	Object
      //   745	6	3	localIOException6	java.io.IOException
      //   773	49	3	localObject4	Object
      //   835	13	3	localIOException7	java.io.IOException
      //   888	6	3	localIOException8	java.io.IOException
      //   33	869	4	localFile	File
      //   58	849	5	localBitmap	Bitmap
      //   107	249	6	localg	com.xiaomi.passport.accountmanager.g
      //   121	592	7	locala	com.xiaomi.passport.data.a
      //   124	713	8	i	int
      //   127	742	9	j	int
      //   132	229	10	localObject5	Object
      //   421	1	10	localAuthenticationFailureException1	com.xiaomi.accountsdk.request.AuthenticationFailureException
      //   448	199	10	localObject6	Object
      //   689	16	10	localAuthenticationFailureException2	com.xiaomi.accountsdk.request.AuthenticationFailureException
      //   779	145	10	localObject7	Object
      //   136	786	11	k	int
      //   148	296	12	arrayOfVoid1	Void[]
      //   151	355	13	arrayOfVoid2	Void[]
      //   154	414	14	arrayOfVoid3	Void[]
      //   157	473	15	arrayOfVoid4	Void[]
      //   160	113	16	arrayOfVoid5	Void[]
      //   377	1	16	localInvalidParameterException1	com.xiaomi.accountsdk.account.exception.InvalidParameterException
      //   388	1	16	localCipherException1	com.xiaomi.accountsdk.request.CipherException
      //   399	1	16	localInvalidResponseException1	com.xiaomi.accountsdk.request.InvalidResponseException
      //   410	1	16	localAccessDeniedException1	com.xiaomi.accountsdk.request.AccessDeniedException
      //   426	1	16	localIOException9	java.io.IOException
      //   441	14	16	localInvalidParameterException2	com.xiaomi.accountsdk.account.exception.InvalidParameterException
      //   503	14	16	localCipherException2	com.xiaomi.accountsdk.request.CipherException
      //   565	14	16	localInvalidResponseException2	com.xiaomi.accountsdk.request.InvalidResponseException
      //   627	68	16	localAccessDeniedException2	com.xiaomi.accountsdk.request.AccessDeniedException
      //   784	14	16	localIOException10	java.io.IOException
      //   163	624	17	arrayOfVoid6	Void[]
      //   254	587	18	localObject8	Object
      // Exception table:
      //   from	to	target	type
      //   44	60	63	java/io/IOException
      //   365	370	373	java/io/IOException
      //   287	292	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   295	300	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   303	311	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   314	324	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   327	334	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   337	352	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   355	365	377	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   287	292	388	com/xiaomi/accountsdk/request/CipherException
      //   295	300	388	com/xiaomi/accountsdk/request/CipherException
      //   303	311	388	com/xiaomi/accountsdk/request/CipherException
      //   314	324	388	com/xiaomi/accountsdk/request/CipherException
      //   327	334	388	com/xiaomi/accountsdk/request/CipherException
      //   337	352	388	com/xiaomi/accountsdk/request/CipherException
      //   355	365	388	com/xiaomi/accountsdk/request/CipherException
      //   287	292	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   295	300	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   303	311	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   314	324	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   327	334	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   337	352	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   355	365	399	com/xiaomi/accountsdk/request/InvalidResponseException
      //   287	292	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   295	300	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   303	311	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   314	324	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   327	334	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   337	352	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   355	365	410	com/xiaomi/accountsdk/request/AccessDeniedException
      //   287	292	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   295	300	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   303	311	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   314	324	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   327	334	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   337	352	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   355	365	421	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   287	292	426	java/io/IOException
      //   295	300	426	java/io/IOException
      //   303	311	426	java/io/IOException
      //   314	324	426	java/io/IOException
      //   327	334	426	java/io/IOException
      //   337	352	426	java/io/IOException
      //   355	365	426	java/io/IOException
      //   165	180	437	finally
      //   201	230	437	finally
      //   251	256	437	finally
      //   277	284	437	finally
      //   450	459	437	finally
      //   462	467	437	finally
      //   512	521	437	finally
      //   524	529	437	finally
      //   574	583	437	finally
      //   586	591	437	finally
      //   636	645	437	finally
      //   648	653	437	finally
      //   793	802	437	finally
      //   805	810	437	finally
      //   165	180	441	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   201	230	441	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   251	256	441	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   277	284	441	com/xiaomi/accountsdk/account/exception/InvalidParameterException
      //   478	482	492	java/io/IOException
      //   165	180	503	com/xiaomi/accountsdk/request/CipherException
      //   201	230	503	com/xiaomi/accountsdk/request/CipherException
      //   251	256	503	com/xiaomi/accountsdk/request/CipherException
      //   277	284	503	com/xiaomi/accountsdk/request/CipherException
      //   540	544	554	java/io/IOException
      //   165	180	565	com/xiaomi/accountsdk/request/InvalidResponseException
      //   201	230	565	com/xiaomi/accountsdk/request/InvalidResponseException
      //   251	256	565	com/xiaomi/accountsdk/request/InvalidResponseException
      //   277	284	565	com/xiaomi/accountsdk/request/InvalidResponseException
      //   602	606	616	java/io/IOException
      //   165	180	627	com/xiaomi/accountsdk/request/AccessDeniedException
      //   201	230	627	com/xiaomi/accountsdk/request/AccessDeniedException
      //   251	256	627	com/xiaomi/accountsdk/request/AccessDeniedException
      //   277	284	627	com/xiaomi/accountsdk/request/AccessDeniedException
      //   664	668	678	java/io/IOException
      //   165	180	689	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   201	230	689	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   251	256	689	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   277	284	689	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   737	742	745	java/io/IOException
      //   287	292	777	finally
      //   295	300	777	finally
      //   303	311	777	finally
      //   314	324	777	finally
      //   327	334	777	finally
      //   337	352	777	finally
      //   355	365	777	finally
      //   700	709	777	finally
      //   712	724	777	finally
      //   727	732	777	finally
      //   165	180	784	java/io/IOException
      //   201	230	784	java/io/IOException
      //   251	256	784	java/io/IOException
      //   277	284	784	java/io/IOException
      //   821	825	835	java/io/IOException
      //   880	885	888	java/io/IOException
    }
    
    protected void b(c.f paramf)
    {
      if (paramf != null)
      {
        Bitmap localBitmap = paramf.b;
        if (localBitmap != null) {
          localBitmap.recycle();
        }
      }
      super.onCancelled(paramf);
    }
    
    protected void c(c.f paramf)
    {
      super.onPostExecute(paramf);
      c.b(c.this);
      this.b.dismiss();
      if (paramf == null) {
        return;
      }
      if (paramf.b == null)
      {
        int i = paramf.a;
        int j = i;
        if (i == -1) {
          j = n5.g.c0;
        }
        z6.a.a(this.c, j);
      }
    }
    
    class a
      implements DialogInterface.OnDismissListener
    {
      a(c paramc) {}
      
      public void onDismiss(DialogInterface paramDialogInterface)
      {
        c.g.this.cancel(true);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v6.c
 * JD-Core Version:    0.7.0.1
 */