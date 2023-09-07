.class public Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;
.super Lcom/android/dingtalk/openauth/web/BaseCommonActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "redirect_uri"

.field private static final b:Ljava/lang/String; = "response_type"

.field private static final c:Ljava/lang/String; = "client_id"

.field private static final d:Ljava/lang/String; = "scope"

.field private static final e:Ljava/lang/String; = "nonce"

.field private static final f:Ljava/lang/String; = "state"

.field private static final g:Ljava/lang/String; = "prompt"

.field private static final h:Ljava/lang/String; = "sdk_version"

.field private static final i:Ljava/lang/String; = "identifier"

.field private static final j:Ljava/lang/String; = "signature"

.field private static final k:Ljava/lang/String; = "client_type"

.field private static final l:Ljava/lang/String; = "android"


# instance fields
.field private m:Landroid/webkit/WebView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/BaseCommonActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
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

.method private a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->k()V

    return-void
.end method

.method static synthetic b(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
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

.method static synthetic c(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
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

.method static synthetic d(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->n:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
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

.method private e()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.ding.EXTRA_MESSAGE_REDIRECT_URI"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->p:Ljava/lang/String;

    const-string v1, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->l()Z

    move-result p0

    return p0
.end method

.method private f()V
    .locals 2

    .line 1
    sget v0, Lcom/android/dingtalk/openauth/R$id;->close_icon:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->n:Landroid/widget/ImageView;

    .line 10
    .line 11
    new-instance v1, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$1;-><init>(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    sget v0, Lcom/android/dingtalk/openauth/R$id;->back_icon:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->o:Landroid/widget/ImageView;

    .line 28
    .line 29
    new-instance v1, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$2;-><init>(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    sget v0, Lcom/android/dingtalk/openauth/R$id;->webview:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/webkit/WebView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 46
    .line 47
    return-void
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
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->h()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->i()V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private h()V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/android/dingtalk/openauth/utils/DDAuthUtil;->isDebug(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 31
    .line 32
    .line 33
    const-wide/32 v3, 0x800000

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 37
    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 41
    .line 42
    .line 43
    const-string v3, "cache"

    .line 44
    .line 45
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 63
    .line 64
    .line 65
    const-string v3, "utf-8"

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 74
    .line 75
    .line 76
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 96
    .line 97
    .line 98
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    :try_start_0
    const-class v4, Landroid/webkit/WebSettings;

    .line 108
    .line 109
    const-string v5, "setHardwareAccelSkiaEnabled"

    .line 110
    .line 111
    new-array v6, v1, [Ljava/lang/Class;

    .line 112
    .line 113
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    aput-object v7, v6, v2

    .line 116
    .line 117
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    .line 119
    .line 120
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v4

    .line 123
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :goto_0
    if-eqz v3, :cond_1

    .line 127
    .line 128
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 129
    .line 130
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    aput-object v4, v1, v2

    .line 133
    .line 134
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_1
    const-string v0, "call WebView setHardwareAccelSkiaEnabled error"

    .line 139
    .line 140
    invoke-static {v0}, Lcom/android/dingtalk/openauth/utils/c;->a(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_1
    return-void
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
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 2
    .line 3
    new-instance v1, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$3;-><init>(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    .line 10
    .line 11
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

.method private j()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "android.intent.ding.EXTRA_MESSAGE_APP_ID"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "android.intent.ding.EXTRA_MESSAGE_STATE"

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "android.intent.ding.EXTRA_MESSAGE_NONCE"

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "android.intent.ding.EXTRA_MESSAGE_SCOPE"

    .line 30
    .line 31
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "android.intent.ding.EXTRA_MESSAGE_RESPONSE_TYPE"

    .line 36
    .line 37
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v7, "android.intent.ding.EXTRA_MESSAGE_PROMPT"

    .line 42
    .line 43
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string v8, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {p0}, Lcom/android/dingtalk/openauth/utils/DDAuthUtil;->getAuthLoginUrl(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    new-instance v9, Landroid/net/Uri$Builder;

    .line 63
    .line 64
    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v9, v8}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    .line 101
    .line 102
    iget-object v8, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->p:Ljava/lang/String;

    .line 103
    .line 104
    const-string v10, "redirect_uri"

    .line 105
    .line 106
    invoke-direct {p0, v9, v10, v8}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v8, "response_type"

    .line 110
    .line 111
    invoke-direct {p0, v9, v8, v6}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v6, "client_id"

    .line 115
    .line 116
    invoke-direct {p0, v9, v6, v2}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "scope"

    .line 120
    .line 121
    invoke-direct {p0, v9, v2, v5}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v2, "nonce"

    .line 125
    .line 126
    invoke-direct {p0, v9, v2, v4}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v2, "state"

    .line 130
    .line 131
    invoke-direct {p0, v9, v2, v3}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v2, "prompt"

    .line 135
    .line 136
    invoke-direct {p0, v9, v2, v7}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "sdk_version"

    .line 144
    .line 145
    invoke-direct {p0, v9, v2, v0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->q:Ljava/lang/String;

    .line 149
    .line 150
    const-string v2, "identifier"

    .line 151
    .line 152
    invoke-direct {p0, v9, v2, v0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "signature"

    .line 156
    .line 157
    invoke-direct {p0, v9, v0, v1}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "client_type"

    .line 161
    .line 162
    const-string v1, "android"

    .line 163
    .line 164
    invoke-direct {p0, v9, v0, v1}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
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
.end method

.method private k()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity$4;-><init>(Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
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

.method private l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    sget v0, Lcom/android/dingtalk/openauth/R$layout;->auth_webview_layout:I

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/dingtalk/openauth/web/BaseCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->e()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->f()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->g()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->j()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/dingtalk/openauth/web/AuthWebviewActivity;->m:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
