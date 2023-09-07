.class Lcom/android/dingtalk/openauth/DDAuthApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dingtalk/openauth/IDDAuthApi;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParam:Lcom/android/dingtalk/openauth/AuthLoginParam;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dingtalk/openauth/AuthLoginParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mParam:Lcom/android/dingtalk/openauth/AuthLoginParam;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/android/dingtalk/openauth/utils/b;

    .line 14
    .line 15
    const-string p2, "AuthLoginParam is null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Lcom/android/dingtalk/openauth/utils/b;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    new-instance p1, Lcom/android/dingtalk/openauth/utils/b;

    .line 22
    .line 23
    const-string p2, "Context is null"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/android/dingtalk/openauth/utils/b;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
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


# virtual methods
.method public authLogin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mParam:Lcom/android/dingtalk/openauth/AuthLoginParam;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/dingtalk/openauth/AuthLoginParam;->getAltSignature()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0}, Lcom/android/dingtalk/openauth/utils/DDAuthUtil;->isDebug(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-static {v0}, Lcom/android/dingtalk/openauth/utils/DDAuthUtil;->isDDSupportAPI(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mParam:Lcom/android/dingtalk/openauth/AuthLoginParam;

    .line 43
    .line 44
    invoke-static {v0, v3, v1, v2}, Lcom/android/dingtalk/openauth/utils/a;->a(Landroid/content/Context;Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/dingtalk/openauth/DDAuthApi;->mParam:Lcom/android/dingtalk/openauth/AuthLoginParam;

    .line 51
    .line 52
    invoke-static {v0, v3, v1, v2}, Lcom/android/dingtalk/openauth/utils/a;->b(Landroid/content/Context;Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method
