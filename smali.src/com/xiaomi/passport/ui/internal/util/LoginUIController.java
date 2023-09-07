package com.xiaomi.passport.ui.internal.util;

import android.app.Activity;
import android.content.Context;
import b7.r;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.Step2LoginParams;
import com.xiaomi.passport.uicontroller.PhoneLoginController;
import com.xiaomi.passport.uicontroller.PhoneLoginController.q;
import com.xiaomi.passport.uicontroller.a.b;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import n5.g;

public class LoginUIController
{
  private Map<UIControllerType, FutureTask> a = new HashMap();
  private final Activity b;
  private PhoneLoginController c;
  private a7.b d;
  private PhoneLoginController.q e;
  
  public LoginUIController(Activity paramActivity)
  {
    this.b = paramActivity;
    this.c = new PhoneLoginController();
    paramActivity = new a();
    this.e = paramActivity;
    this.c.k(paramActivity);
  }
  
  private void c()
  {
    a7.b localb = this.d;
    if (localb != null)
    {
      localb.dismiss();
      this.d = null;
    }
  }
  
  private boolean d(UIControllerType paramUIControllerType)
  {
    paramUIControllerType = (FutureTask)this.a.get(paramUIControllerType);
    return (paramUIControllerType != null) && (!paramUIControllerType.isDone());
  }
  
  private void f(Context paramContext, String paramString)
  {
    if (this.d != null) {
      c();
    }
    paramContext = new a7.b(paramContext);
    this.d = paramContext;
    paramContext.h(paramString);
    this.d.f(true);
    this.d.show();
  }
  
  public void e(final PasswordLoginParams paramPasswordLoginParams, final d paramd)
  {
    UIControllerType localUIControllerType = UIControllerType.PASSWORD_LOGIN;
    if (d(localUIControllerType))
    {
      com.xiaomi.accountsdk.utils.b.g("LoginUIController", "password login has not finished");
      return;
    }
    if (paramd != null)
    {
      Activity localActivity = this.b;
      if ((localActivity != null) && (!localActivity.isFinishing()))
      {
        localActivity = this.b;
        f(localActivity, localActivity.getString(g.A));
        b7.d.a();
        paramd = new b(paramd, paramPasswordLoginParams);
        paramPasswordLoginParams = new com.xiaomi.passport.uicontroller.a(new c(paramPasswordLoginParams), paramd);
        r.a().submit(paramPasswordLoginParams);
        this.a.put(localUIControllerType, paramPasswordLoginParams);
        return;
      }
      com.xiaomi.accountsdk.utils.b.g("LoginUIController", "activity non exist");
      return;
    }
    throw new IllegalArgumentException("should implements login callback");
  }
  
  private static enum UIControllerType
  {
    static
    {
      UIControllerType localUIControllerType1 = new UIControllerType("PASSWORD_LOGIN", 0);
      PASSWORD_LOGIN = localUIControllerType1;
      UIControllerType localUIControllerType2 = new UIControllerType("PHONE_LOGIN", 1);
      PHONE_LOGIN = localUIControllerType2;
      UIControllerType localUIControllerType3 = new UIControllerType("PHONE_REGISTER", 2);
      PHONE_REGISTER = localUIControllerType3;
      UIControllerType localUIControllerType4 = new UIControllerType("SEND_PHONE_TICKET", 3);
      SEND_PHONE_TICKET = localUIControllerType4;
      UIControllerType localUIControllerType5 = new UIControllerType("ADD_OR_UPDATE_ACCOUNT_MANAGER", 4);
      ADD_OR_UPDATE_ACCOUNT_MANAGER = localUIControllerType5;
      UIControllerType localUIControllerType6 = new UIControllerType("QUERY_PHONE_USER_INFO", 5);
      QUERY_PHONE_USER_INFO = localUIControllerType6;
      $VALUES = new UIControllerType[] { localUIControllerType1, localUIControllerType2, localUIControllerType3, localUIControllerType4, localUIControllerType5, localUIControllerType6 };
    }
    
    private UIControllerType() {}
  }
  
  class a
    extends PhoneLoginController.q
  {
    a() {}
    
    public RegisterUserInfo a(com.xiaomi.accountsdk.account.data.d paramd)
      throws Exception
    {
      RegisterUserInfo localRegisterUserInfo = super.a(paramd);
      return c.b(LoginUIController.a(LoginUIController.this).getApplicationContext(), LoginUIController.a(LoginUIController.this).getFragmentManager(), localRegisterUserInfo, paramd);
    }
  }
  
  class b
    extends a.b<AccountInfo>
  {
    b(LoginUIController.d paramd, PasswordLoginParams paramPasswordLoginParams) {}
    
    /* Error */
    public void a(com.xiaomi.passport.uicontroller.a<AccountInfo> parama)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 20	com/xiaomi/passport/ui/internal/util/LoginUIController$b:c	Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
      //   4: invokestatic 36	com/xiaomi/passport/ui/internal/util/LoginUIController:a	(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)Landroid/app/Activity;
      //   7: ifnull +442 -> 449
      //   10: aload_0
      //   11: getfield 20	com/xiaomi/passport/ui/internal/util/LoginUIController$b:c	Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
      //   14: invokestatic 36	com/xiaomi/passport/ui/internal/util/LoginUIController:a	(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)Landroid/app/Activity;
      //   17: invokevirtual 42	android/app/Activity:isFinishing	()Z
      //   20: ifeq +6 -> 26
      //   23: goto +426 -> 449
      //   26: aload_1
      //   27: invokevirtual 48	java/util/concurrent/FutureTask:get	()Ljava/lang/Object;
      //   30: checkcast 50	com/xiaomi/accountsdk/account/data/AccountInfo
      //   33: astore_1
      //   34: aload_0
      //   35: getfield 22	com/xiaomi/passport/ui/internal/util/LoginUIController$b:a	Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;
      //   38: aload_1
      //   39: invokeinterface 56 2 0
      //   44: aload_0
      //   45: getfield 20	com/xiaomi/passport/ui/internal/util/LoginUIController$b:c	Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
      //   48: invokestatic 59	com/xiaomi/passport/ui/internal/util/LoginUIController:b	(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V
      //   51: goto +388 -> 439
      //   54: astore_1
      //   55: goto +385 -> 440
      //   58: astore_2
      //   59: ldc 61
      //   61: ldc 63
      //   63: aload_2
      //   64: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   67: aload_2
      //   68: invokevirtual 75	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
      //   71: astore_1
      //   72: aload_1
      //   73: instanceof 77
      //   76: ifeq +37 -> 113
      //   79: ldc 61
      //   81: ldc 79
      //   83: aload_2
      //   84: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   87: aload_0
      //   88: getfield 22	com/xiaomi/passport/ui/internal/util/LoginUIController$b:a	Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;
      //   91: aload_0
      //   92: getfield 24	com/xiaomi/passport/ui/internal/util/LoginUIController$b:b	Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
      //   95: getfield 85	com/xiaomi/accountsdk/account/data/PasswordLoginParams:serviceId	Ljava/lang/String;
      //   98: aload_1
      //   99: checkcast 77	com/xiaomi/accountsdk/account/exception/NeedNotificationException
      //   102: invokevirtual 89	com/xiaomi/accountsdk/account/exception/NeedNotificationException:getNotificationUrl	()Ljava/lang/String;
      //   105: invokeinterface 92 3 0
      //   110: goto +111 -> 221
      //   113: aload_1
      //   114: instanceof 94
      //   117: ifeq +73 -> 190
      //   120: ldc 61
      //   122: ldc 96
      //   124: aload_2
      //   125: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   128: aload_1
      //   129: checkcast 94	com/xiaomi/accountsdk/account/exception/NeedVerificationException
      //   132: astore_1
      //   133: new 98	com/xiaomi/accountsdk/account/data/Step2LoginParams$b
      //   136: astore_2
      //   137: aload_2
      //   138: invokespecial 99	com/xiaomi/accountsdk/account/data/Step2LoginParams$b:<init>	()V
      //   141: aload_2
      //   142: aload_1
      //   143: invokevirtual 102	com/xiaomi/accountsdk/account/exception/NeedVerificationException:getUserId	()Ljava/lang/String;
      //   146: invokevirtual 106	com/xiaomi/accountsdk/account/data/Step2LoginParams$b:m	(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;
      //   149: aload_1
      //   150: invokevirtual 110	com/xiaomi/accountsdk/account/exception/NeedVerificationException:getMetaLoginData	()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
      //   153: invokevirtual 114	com/xiaomi/accountsdk/account/data/Step2LoginParams$b:j	(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;
      //   156: aload_0
      //   157: getfield 24	com/xiaomi/passport/ui/internal/util/LoginUIController$b:b	Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
      //   160: getfield 85	com/xiaomi/accountsdk/account/data/PasswordLoginParams:serviceId	Ljava/lang/String;
      //   163: invokevirtual 117	com/xiaomi/accountsdk/account/data/Step2LoginParams$b:k	(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;
      //   166: aload_1
      //   167: invokevirtual 120	com/xiaomi/accountsdk/account/exception/NeedVerificationException:getStep1Token	()Ljava/lang/String;
      //   170: invokevirtual 123	com/xiaomi/accountsdk/account/data/Step2LoginParams$b:l	(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$b;
      //   173: invokevirtual 127	com/xiaomi/accountsdk/account/data/Step2LoginParams$b:i	()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
      //   176: astore_1
      //   177: aload_0
      //   178: getfield 22	com/xiaomi/passport/ui/internal/util/LoginUIController$b:a	Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;
      //   181: aload_1
      //   182: invokeinterface 131 2 0
      //   187: goto +34 -> 221
      //   190: aload_1
      //   191: instanceof 133
      //   194: ifeq +32 -> 226
      //   197: ldc 61
      //   199: ldc 135
      //   201: invokestatic 137	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
      //   204: aload_0
      //   205: getfield 22	com/xiaomi/passport/ui/internal/util/LoginUIController$b:a	Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;
      //   208: iconst_0
      //   209: aload_1
      //   210: checkcast 133	com/xiaomi/accountsdk/account/exception/NeedCaptchaException
      //   213: invokevirtual 140	com/xiaomi/accountsdk/account/exception/NeedCaptchaException:getCaptchaUrl	()Ljava/lang/String;
      //   216: invokeinterface 143 3 0
      //   221: iconst_m1
      //   222: istore_3
      //   223: goto +166 -> 389
      //   226: aload_1
      //   227: instanceof 145
      //   230: ifeq +67 -> 297
      //   233: ldc 61
      //   235: ldc 147
      //   237: aload_2
      //   238: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   241: aload_1
      //   242: checkcast 145	com/xiaomi/accountsdk/account/exception/InvalidCredentialException
      //   245: astore_2
      //   246: aload_2
      //   247: invokevirtual 148	com/xiaomi/accountsdk/account/exception/InvalidCredentialException:getCaptchaUrl	()Ljava/lang/String;
      //   250: invokestatic 154	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
      //   253: ifne +20 -> 273
      //   256: aload_0
      //   257: getfield 22	com/xiaomi/passport/ui/internal/util/LoginUIController$b:a	Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;
      //   260: iconst_1
      //   261: aload_2
      //   262: invokevirtual 148	com/xiaomi/accountsdk/account/exception/InvalidCredentialException:getCaptchaUrl	()Ljava/lang/String;
      //   265: invokeinterface 143 3 0
      //   270: goto -49 -> 221
      //   273: aload_1
      //   274: checkcast 145	com/xiaomi/accountsdk/account/exception/InvalidCredentialException
      //   277: invokevirtual 157	com/xiaomi/accountsdk/account/exception/InvalidCredentialException:getHasPwd	()Z
      //   280: ifeq +10 -> 290
      //   283: getstatic 163	n5/g:z	I
      //   286: istore_3
      //   287: goto +102 -> 389
      //   290: getstatic 166	n5/g:U	I
      //   293: istore_3
      //   294: goto +95 -> 389
      //   297: aload_1
      //   298: instanceof 168
      //   301: ifeq +18 -> 319
      //   304: ldc 61
      //   306: ldc 170
      //   308: aload_2
      //   309: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   312: getstatic 173	n5/g:T	I
      //   315: istore_3
      //   316: goto +73 -> 389
      //   319: aload_1
      //   320: instanceof 175
      //   323: ifeq +18 -> 341
      //   326: ldc 61
      //   328: ldc 177
      //   330: aload_2
      //   331: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   334: getstatic 180	n5/g:d0	I
      //   337: istore_3
      //   338: goto +51 -> 389
      //   341: aload_1
      //   342: instanceof 182
      //   345: ifeq +18 -> 363
      //   348: ldc 61
      //   350: ldc 184
      //   352: aload_2
      //   353: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   356: getstatic 186	n5/g:c	I
      //   359: istore_3
      //   360: goto +29 -> 389
      //   363: aload_1
      //   364: instanceof 188
      //   367: ifeq +18 -> 385
      //   370: ldc 61
      //   372: ldc 190
      //   374: aload_2
      //   375: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   378: getstatic 193	n5/g:W	I
      //   381: istore_3
      //   382: goto +7 -> 389
      //   385: getstatic 196	n5/g:c0	I
      //   388: istore_3
      //   389: aload_0
      //   390: getfield 20	com/xiaomi/passport/ui/internal/util/LoginUIController$b:c	Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
      //   393: invokestatic 59	com/xiaomi/passport/ui/internal/util/LoginUIController:b	(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V
      //   396: iload_3
      //   397: iconst_m1
      //   398: if_icmpeq +41 -> 439
      //   401: goto +28 -> 429
      //   404: astore_1
      //   405: ldc 61
      //   407: ldc 198
      //   409: aload_1
      //   410: invokestatic 69	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   413: getstatic 196	n5/g:c0	I
      //   416: istore_3
      //   417: aload_0
      //   418: getfield 20	com/xiaomi/passport/ui/internal/util/LoginUIController$b:c	Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
      //   421: invokestatic 59	com/xiaomi/passport/ui/internal/util/LoginUIController:b	(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V
      //   424: iload_3
      //   425: iconst_m1
      //   426: if_icmpeq +13 -> 439
      //   429: aload_0
      //   430: getfield 22	com/xiaomi/passport/ui/internal/util/LoginUIController$b:a	Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;
      //   433: iload_3
      //   434: invokeinterface 201 2 0
      //   439: return
      //   440: aload_0
      //   441: getfield 20	com/xiaomi/passport/ui/internal/util/LoginUIController$b:c	Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
      //   444: invokestatic 59	com/xiaomi/passport/ui/internal/util/LoginUIController:b	(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V
      //   447: aload_1
      //   448: athrow
      //   449: ldc 61
      //   451: ldc 203
      //   453: invokestatic 137	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
      //   456: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	457	0	this	b
      //   0	457	1	parama	com.xiaomi.passport.uicontroller.a<AccountInfo>
      //   58	67	2	localExecutionException	java.util.concurrent.ExecutionException
      //   136	239	2	localObject	Object
      //   222	212	3	i	int
      // Exception table:
      //   from	to	target	type
      //   26	44	54	finally
      //   59	110	54	finally
      //   113	187	54	finally
      //   190	221	54	finally
      //   226	270	54	finally
      //   273	287	54	finally
      //   290	294	54	finally
      //   297	316	54	finally
      //   319	338	54	finally
      //   341	360	54	finally
      //   363	382	54	finally
      //   385	389	54	finally
      //   405	417	54	finally
      //   26	44	58	java/util/concurrent/ExecutionException
      //   26	44	404	java/lang/InterruptedException
    }
  }
  
  class c
    implements Callable<AccountInfo>
  {
    c(PasswordLoginParams paramPasswordLoginParams) {}
    
    public AccountInfo a()
      throws Exception
    {
      return b7.a.j(paramPasswordLoginParams);
    }
  }
  
  public static abstract interface d
  {
    public abstract void c(String paramString1, String paramString2);
    
    public abstract void d(AccountInfo paramAccountInfo);
    
    public abstract void e(boolean paramBoolean, String paramString);
    
    public abstract void g(Step2LoginParams paramStep2LoginParams);
    
    public abstract void h(int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.LoginUIController
 * JD-Core Version:    0.7.0.1
 */