.class public Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static final d:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "intent == null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "bundle == null"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string v1, "key_url"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "url is empty"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string v2, "key_show_top_bar"

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    sget v2, Lcom/miui/zeus/landingpage/sdk/R$id;->lp_webview_rl_tool_bar:I

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    const-string v2, "key_orientation"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, -0x1

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sget-object v2, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v5, "orientation="

    .line 94
    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/i;->a(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    new-instance v0, Lcom/miui/zeus/landingpage/sdk/LPWebView;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/miui/zeus/landingpage/sdk/LPWebView;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 139
    .line 140
    const/high16 v3, 0x40400000    # 3.0f

    .line 141
    .line 142
    mul-float/2addr v2, v3

    .line 143
    const/high16 v3, 0x3f000000    # 0.5f

    .line 144
    .line 145
    add-float/2addr v2, v3

    .line 146
    float-to-int v2, v2

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollBarSize(I)V

    .line 148
    .line 149
    .line 150
    const/high16 v2, 0x2000000

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x1

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    new-instance v0, Lcom/miui/zeus/landingpage/sdk/g;

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-direct {v0, v2}, Lcom/miui/zeus/landingpage/sdk/g;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    .line 172
    .line 173
    :goto_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->b:Landroid/widget/FrameLayout;

    .line 174
    .line 175
    iget-object v2, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v3, "url="

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v0, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget p1, Lcom/miui/zeus/landingpage/sdk/R$layout;->lp_activity_webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/miui/zeus/landingpage/sdk/R$id;->lp_webView_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->b:Landroid/widget/FrameLayout;

    sget p1, Lcom/miui/zeus/landingpage/sdk/R$id;->lp_webview_iv_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->c:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity$a;-><init>(Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->d:Ljava/lang/String;

    const-string v1, "WebViewActivity onCreate:"

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
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
