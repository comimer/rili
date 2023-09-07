.class public Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;
.super Ljava/lang/Object;
.source "CookieLoginUrlInterceptor.java"

# interfaces
.implements Lcom/xiaomi/passport/webview/UrlInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$c;,
        Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;
    }
.end annotation


# static fields
.field private static final AUTH_END:Ljava/lang/String; = "auth-end"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGIN_END:Ljava/lang/String; = "login-end"

.field private static final PASS_INFO:Ljava/lang/String; = "passInfo"


# instance fields
.field private mAuthEndTask:Lr6/a;

.field private final mCloseAfterLogin:Z

.field private final mHostActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mCloseAfterLogin:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can not be created from parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleResponse(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "accountAuthenticatorResponse"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/passport/accountmanager/g;->i(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mAuthEndTask:Lr6/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lr6/a;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mAuthEndTask:Lr6/a;

    .line 10
    .line 11
    :cond_0
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public shouldIntercept(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lb7/h;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lb7/h;->e(Ljava/lang/String;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "passInfo"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lb7/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "login-end"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->F(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->r()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-nez p2, :cond_0

    .line 71
    .line 72
    iget-object p2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, p1}, Lcom/xiaomi/passport/accountmanager/g;->q(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-string v0, "need_retry_on_authenticator_response_result"

    .line 88
    .line 89
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-static {p1, p2}, Lb7/a;->b(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->handleResponse(Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    iget-boolean p2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mCloseAfterLogin:Z

    .line 101
    .line 102
    if-eqz p2, :cond_1

    .line 103
    .line 104
    new-instance p2, Landroid/content/Intent;

    .line 105
    .line 106
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 113
    .line 114
    const/4 v0, -0x1

    .line 115
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 121
    .line 122
    .line 123
    :cond_1
    return v2

    .line 124
    :cond_2
    const-string p1, "auth-end"

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    iget-boolean p1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mCloseAfterLogin:Z

    .line 133
    .line 134
    if-eqz p1, :cond_4

    .line 135
    .line 136
    new-instance p1, Lr6/a;

    .line 137
    .line 138
    new-instance v0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;

    .line 139
    .line 140
    invoke-direct {v0, p2}, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean p2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mCloseAfterLogin:Z

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    if-eqz p2, :cond_3

    .line 147
    .line 148
    new-instance p2, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$c;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mHostActivity:Landroid/app/Activity;

    .line 151
    .line 152
    invoke-direct {p2, v2}, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$c;-><init>(Landroid/app/Activity;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    move-object p2, v1

    .line 157
    :goto_0
    invoke-direct {p1, v0, p2, v1}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;->mAuthEndTask:Lr6/a;

    .line 161
    .line 162
    invoke-virtual {p1}, Lr6/a;->c()V

    .line 163
    .line 164
    .line 165
    const/4 p1, 0x1

    .line 166
    return p1

    .line 167
    :cond_4
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "can not write to parcel"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method
