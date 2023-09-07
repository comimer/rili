.class public Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEEPLINK_EXIST_DEEPLINK_DONE:I = 0x3

.field public static final DEEPLINK_EXIST_PACKAGE_DONE:I = 0x4

.field public static final DEEPLINK_EXIST_PACKAGE_FAIL:I = 0x5

.field public static final DEEPLINK_NOT_EXIST_PACKAGE_DONE:I = 0x1

.field public static final DEEPLINK_NOT_EXIST_PACKAGE_FAIL:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LPJsCallee"

.field public static final TYPE_DEEPLINK:I = 0x1

.field public static final TYPE_DOWNLOAD:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDownloadListener:Lcom/miui/zeus/landingpage/sdk/DownloadListener;

.field public mMethodName:Ljava/lang/String;

.field public mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

.field public mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

.field public mPackageName:Ljava/lang/String;

.field public mProgress:I

.field public mRegister:Z

.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mRegister:Z

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mWebView:Landroid/webkit/WebView;

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    new-instance p2, Lcom/miui/zeus/landingpage/sdk/d;

    invoke-direct {p2, p1}, Lcom/miui/zeus/landingpage/sdk/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    invoke-direct {p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->initDownloadListener()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)I
    .locals 0

    iget p0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mProgress:I

    return p0
.end method

.method public static synthetic access$202(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;I)I
    .locals 0

    iput p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mProgress:I

    return p1
.end method

.method public static synthetic access$300(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Lcom/miui/zeus/landingpage/sdk/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Lcom/miui/zeus/landingpage/sdk/DownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mDownloadListener:Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private addExtraData(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .locals 6

    const-string v0, "ext_launchWhenInstalled"

    const-string v1, "extra_query_params"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "LPJsCallee"

    if-eqz v2, :cond_0

    const-string p1, "addExtraData extraQueryParams is empty"

    invoke-static {v3, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const-string v4, "launchWhenInstalled"

    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "addExtraData JSONException:"

    invoke-static {v3, p1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initDownloadListener()V
    .locals 1

    new-instance v0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;

    invoke-direct {v0, p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;-><init>(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)V

    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mDownloadListener:Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    return-void
.end method

.method private registerDownloadListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mRegister:Z

    if-nez v0, :cond_0

    const-string v0, "LPJsCallee"

    const-string v1, "registerDownloadListener"

    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mDownloadListener:Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/miui/zeus/landingpage/sdk/c;->a(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mRegister:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public downloadFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public downloadFinished(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public downloadPaused(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public downloadProgressUpdated(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public downloadStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getApkVersion(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 p1, -0x2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 27
    .line 28
    :goto_1
    return p1
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

.method public getAppDownloadState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getAppDownloadState packageName="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LPJsCallee"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v0, v2

    .line 45
    :goto_1
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/miui/zeus/landingpage/sdk/b;

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    const/16 v2, 0x64

    .line 51
    .line 52
    invoke-direct {p1, v0, v2}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/miui/zeus/landingpage/sdk/b;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/miui/zeus/landingpage/sdk/b;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_1
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/miui/zeus/landingpage/sdk/b;

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/miui/zeus/landingpage/sdk/b;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/miui/zeus/landingpage/sdk/b;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_2
    new-instance p1, Lcom/miui/zeus/landingpage/sdk/b;

    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-direct {p1, v0, v2}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/miui/zeus/landingpage/sdk/b;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v1, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/miui/zeus/landingpage/sdk/b;

    .line 107
    .line 108
    invoke-direct {p1, v0, v2}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/miui/zeus/landingpage/sdk/b;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public installFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public installStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public installSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isFeatureSupport(I)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LPJsCallee"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mDownloadListener:Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/miui/zeus/landingpage/sdk/c;->b(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public pauseDownloadAppDirectly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 2
    .line 3
    const-string p3, "LPJsCallee"

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, "pauseDownloadAppDirectly MiMarketManager is null"

    .line 8
    .line 9
    invoke-static {p3, p2}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object p2, Lcom/miui/zeus/landingpage/sdk/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    new-array v0, p2, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v1, "pauseDownloadAppDirectly data="

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    aput-object p1, v0, v1

    .line 35
    .line 36
    invoke-static {p3, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/d;->a:Lcom/market/sdk/b;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/market/sdk/b;->f(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    new-array p2, p2, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v0, "pauseDownloadAppDirectly success="

    .line 50
    .line 51
    aput-object v0, p2, v2

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    aput-object p1, p2, v1

    .line 58
    .line 59
    invoke-static {p3, p2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public varargs postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/h;->c:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;-><init>(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;ILjava/lang/String;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public quitCurrentWebview()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "LPJsCallee"

    const-string v1, "quitCurrentWebview"

    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "quitCurrentWebview e:"

    invoke-static {v0, v2, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resumeDownloadAppDirectly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 2
    .line 3
    const-string v0, "LPJsCallee"

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, "resumeDownloadAppDirectly MiMarketManager is null"

    .line 8
    .line 9
    invoke-static {v0, p2}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "resumeDownloadAppDirectly packageName="

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {v0, p2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->registerDownloadListener()V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object p2, Lcom/miui/zeus/landingpage/sdk/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/String;

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    new-array v1, p2, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v2, "resumeDownloadAppDirectly data="

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    aput-object p1, v1, v2

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/miui/zeus/landingpage/sdk/d;->a:Lcom/market/sdk/b;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/market/sdk/b;->g(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    new-array p2, p2, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string v1, "resumeDownloadAppDirectly success="

    .line 75
    .line 76
    aput-object v1, p2, v3

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    aput-object p1, p2, v2

    .line 83
    .line 84
    invoke-static {v0, p2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public setCallbackForNotifyAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/f;->a()Lcom/miui/zeus/landingpage/sdk/f;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object p3, p3, Lcom/miui/zeus/landingpage/sdk/f;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    const-string v2, "LPJsCallee"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/miui/zeus/landingpage/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string p1, "setCallbackForNotifyAppLaunch via packageName success"

    .line 31
    .line 32
    invoke-static {v2, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 36
    .line 37
    new-array v0, v4, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    aput-object v1, v0, v3

    .line 44
    .line 45
    invoke-virtual {p0, v4, p1, v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    move v3, v4

    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    const-string p1, "setCallbackForNotifyAppLaunch via packageName failed"

    .line 52
    .line 53
    invoke-static {v2, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 57
    .line 58
    new-array v0, v4, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    aput-object v1, v0, v3

    .line 65
    .line 66
    invoke-virtual {p0, v4, p1, v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    const-string v1, "setCallbackForNotifyAppLaunch deepLink="

    .line 74
    .line 75
    aput-object v1, v0, v3

    .line 76
    .line 77
    aput-object p1, v0, v4

    .line 78
    .line 79
    invoke-static {v2, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    const/high16 v0, 0x10000000

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    move p1, v4

    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception p1

    .line 117
    const-string v0, "AndroidUtils"

    .line 118
    .line 119
    const-string v1, "try open url e : "

    .line 120
    .line 121
    invoke-static {v0, v1, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    move p1, v3

    .line 125
    :goto_1
    if-eqz p1, :cond_3

    .line 126
    .line 127
    const-string p1, "setCallbackForNotifyAppLaunch via deeplink success"

    .line 128
    .line 129
    invoke-static {v2, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 133
    .line 134
    new-array v0, v4, [Ljava/lang/String;

    .line 135
    .line 136
    const/4 v1, 0x3

    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    aput-object v1, v0, v3

    .line 142
    .line 143
    invoke-virtual {p0, v4, p1, v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {p1, p2}, Lcom/miui/zeus/landingpage/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    const-string p1, "setCallbackForNotifyAppLaunch deeplink failed via packageName success"

    .line 156
    .line 157
    invoke-static {v2, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 161
    .line 162
    new-array v0, v4, [Ljava/lang/String;

    .line 163
    .line 164
    const/4 v1, 0x4

    .line 165
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    aput-object v1, v0, v3

    .line 170
    .line 171
    invoke-virtual {p0, v4, p1, v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    const-string p1, "setCallbackForNotifyAppLaunch deeplink failed via packageName failed"

    .line 176
    .line 177
    invoke-static {v2, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 181
    .line 182
    new-array v0, v4, [Ljava/lang/String;

    .line 183
    .line 184
    const/4 v1, 0x5

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    aput-object v1, v0, v3

    .line 190
    .line 191
    invoke-virtual {p0, v4, p1, v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    if-eqz p3, :cond_6

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    check-cast p3, Lcom/miui/zeus/landingpage/sdk/OnAppLaunchListener;

    .line 209
    .line 210
    if-eqz v3, :cond_5

    .line 211
    .line 212
    invoke-interface {p3, p2}, Lcom/miui/zeus/landingpage/sdk/OnAppLaunchListener;->onSuccess(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    invoke-interface {p3, p2}, Lcom/miui/zeus/landingpage/sdk/OnAppLaunchListener;->onFailed(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_6
    return-void
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public startInstallAppDirectly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string p6, "LPJsCallee"

    .line 2
    .line 3
    const-string v0, "startInstallAppDirectly in"

    .line 4
    .line 5
    invoke-static {p6, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "startInstallAppDirectly MiMarketManager is null"

    .line 13
    .line 14
    invoke-static {p6, p1}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-object p8, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    const-string p8, "market://details/detailfloat"

    .line 23
    .line 24
    invoke-static {p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p8

    .line 28
    invoke-virtual {p8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p8

    .line 32
    const-string v0, "id"

    .line 33
    .line 34
    invoke-virtual {p8, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    .line 36
    .line 37
    const-string v0, "packageName"

    .line 38
    .line 39
    invoke-virtual {p8, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    const-string v0, "ref"

    .line 43
    .line 44
    invoke-virtual {p8, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    .line 46
    .line 47
    const-string p2, "appClientId"

    .line 48
    .line 49
    invoke-virtual {p8, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string p3, "senderPackageName"

    .line 59
    .line 60
    invoke-virtual {p8, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    .line 62
    .line 63
    const-string p2, "appSignature"

    .line 64
    .line 65
    invoke-virtual {p8, p2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    .line 67
    .line 68
    const-string p2, "nonce"

    .line 69
    .line 70
    invoke-virtual {p8, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    const-string p4, "show_cta"

    .line 79
    .line 80
    invoke-virtual {p8, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    const-string p4, "overlayPosition"

    .line 88
    .line 89
    invoke-virtual {p8, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    const-string p4, "startDownload"

    .line 97
    .line 98
    invoke-virtual {p8, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p8, p7}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->addExtraData(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p8}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    const/4 p4, 0x2

    .line 113
    new-array p5, p4, [Ljava/lang/Object;

    .line 114
    .line 115
    const-string p7, "startInstallAppDirectly data="

    .line 116
    .line 117
    const/4 p8, 0x0

    .line 118
    aput-object p7, p5, p8

    .line 119
    .line 120
    aput-object p3, p5, p2

    .line 121
    .line 122
    invoke-static {p6, p5}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p5, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    .line 126
    .line 127
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget-object p5, Lcom/miui/zeus/landingpage/sdk/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-virtual {p5, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->registerDownloadListener()V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/miui/zeus/landingpage/sdk/d;->a:Lcom/market/sdk/b;

    .line 141
    .line 142
    invoke-virtual {p1, p3}, Lcom/market/sdk/b;->c(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    new-array p3, p4, [Ljava/lang/Object;

    .line 147
    .line 148
    const-string p4, "startInstallAppDirectly success="

    .line 149
    .line 150
    aput-object p4, p3, p8

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    aput-object p1, p3, p2

    .line 157
    .line 158
    invoke-static {p6, p3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-void
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
.end method

.method public startInstallAppDirectly1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "LPJsCallee"

    .line 2
    .line 3
    const-string v1, "startInstallAppDirectly1 in"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p1, "startInstallAppDirectly1 MiMarketManager is null"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v3, "startInstallAppDirectly1 url="

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput-object p2, v2, v3

    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p3, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMethodName:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mPackageName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p3, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketHelper:Lcom/miui/zeus/landingpage/sdk/c;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object p3, Lcom/miui/zeus/landingpage/sdk/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->registerDownloadListener()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->mMiMarketManager:Lcom/miui/zeus/landingpage/sdk/d;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/miui/zeus/landingpage/sdk/d;->a:Lcom/market/sdk/b;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/market/sdk/b;->c(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    new-array p2, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string p3, "startInstallAppDirectly1 success="

    .line 60
    .line 61
    aput-object p3, p2, v4

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    aput-object p1, p2, v3

    .line 68
    .line 69
    invoke-static {v0, p2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method
