.class public Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;
.super Landroidx/appcompat/app/d;
.source "PassportJsbWebViewActivity.java"

# interfaces
.implements Lcom/xiaomi/passport/webview/b;


# instance fields
.field private a:Lcom/xiaomi/passport/webview/a;

.field private b:Lm6/e;

.field private c:Lx5/f$b;

.field private d:La7/b;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->e:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->f:Z

    .line 9
    .line 10
    return-void
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

.method private C()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "intent params="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "PassportJsbWebViewActivity"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lm6/e;->b(Landroid/content/Intent;)Lm6/e$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lm6/e$b;->h()Lm6/e;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 44
    .line 45
    return-void
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
.end method

.method private D(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/passport/webview/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/webview/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 7
    .line 8
    sget v0, Ln5/e;->m0:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->z(Lm6/e;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/xiaomi/passport/webview/UrlInterceptor;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lcom/xiaomi/passport/webview/a;->c(Lcom/xiaomi/passport/webview/UrlInterceptor;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->y(Lm6/e;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lm6/b;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Lcom/xiaomi/passport/webview/a;->b(Lm6/b;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/webview/a;->setUrlLoadListener(Lcom/xiaomi/passport/webview/b;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-static {v0, p0, v1}, Lx5/f;->c(Landroid/webkit/WebView;Landroid/app/Activity;I)Lx5/f$b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->c:Lx5/f$b;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    const-string p1, "PassportJsbWebViewActivity"

    .line 111
    .line 112
    const-string v0, "recreate no load ever and reload"

    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->F()V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->F()V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_2
    return-void
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

.method private E(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->C()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xiaomi/passport/webview/DeeplinkUrlInterceptor;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xiaomi/passport/webview/DeeplinkUrlInterceptor;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 10
    .line 11
    iget-object v1, v1, Lm6/e;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/passport/webview/DeeplinkUrlInterceptor;->shouldIntercept(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/16 v2, 0x80

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 40
    .line 41
    const-string v1, "passport.not_use_app_webview"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 51
    .line 52
    iget-object p1, p1, Lm6/e;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Lz6/e;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    sget p1, Ln5/g;->a0:I

    .line 65
    .line 66
    invoke-static {p0, p1}, Lz6/a;->a(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    sget v0, Ln5/f;->c:I

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->setContentView(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->D(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "should never happen"

    .line 90
    .line 91
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw v0
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

.method private F()V
    .locals 3

    .line 1
    invoke-static {p0}, La6/b;->a(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "PassportJsbWebViewActivity"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget v0, Ln5/g;->N0:I

    .line 10
    .line 11
    invoke-static {p0, v0}, Lz6/a;->a(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->I()V

    .line 15
    .line 16
    .line 17
    const-string v0, "network not available, skip load"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v0, "page load start"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->K()V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->e:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string v0, "has not load finish, skip"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 54
    .line 55
    iget-object v0, v0, Lm6/e;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->A(Lm6/e;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/webview/a;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-void
    .line 73
    .line 74
    .line 75
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Lm6/e$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/e$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lm6/e$b;->n(Ljava/lang/String;)Lm6/e$b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lm6/e$b;->h()Lm6/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->H(Landroid/content/Context;Lm6/e;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
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

.method public static H(Landroid/content/Context;Lm6/e;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lm6/e;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    return-object v0
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

.method private I()V
    .locals 2

    .line 1
    const-string v0, "PassportJsbWebViewActivity"

    .line 2
    .line 3
    const-string v1, "setup page load failed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Ln5/e;->P:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
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

.method private J()V
    .locals 2

    .line 1
    const-string v0, "PassportJsbWebViewActivity"

    .line 2
    .line 3
    const-string v1, "setup page load finish"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Ln5/e;->P:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
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

.method private x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lx5/g;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "_locale"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lb7/j;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
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
.end method


# virtual methods
.method protected A(Lm6/e;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/webview/UrlLoadPrepareTask;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lm6/e;->e:Lm6/e$e;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lm6/e$e;->b:[Lcom/xiaomi/passport/webview/UrlLoadPrepareTask;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    move v3, v1

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, p1, v3

    .line 20
    .line 21
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 28
    .line 29
    iget-boolean p1, p1, Lm6/e;->f:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Lcom/xiaomi/passport/webview/RemoveAllCookiesULPT;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/xiaomi/passport/webview/RemoveAllCookiesULPT;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 42
    .line 43
    iget-object p1, p1, Lm6/e;->c:Lm6/e$c;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-boolean p1, p1, Lm6/e$c;->b:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    new-instance p1, Lcom/xiaomi/passport/webview/CookieFillAccountDeviceParamsULPT;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {p1, v2}, Lcom/xiaomi/passport/webview/CookieFillAccountDeviceParamsULPT;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 70
    .line 71
    iget-object p1, p1, Lm6/e;->c:Lm6/e$c;

    .line 72
    .line 73
    iget-object p1, p1, Lm6/e$c;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    new-instance p1, Lcom/xiaomi/passport/webview/CookieFillAutoLoginULPT;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 84
    .line 85
    iget-object v2, v2, Lm6/e;->c:Lm6/e$c;

    .line 86
    .line 87
    iget-object v3, v2, Lm6/e$c;->c:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v2, v2, Lm6/e$c;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {p1, v3, v2}, Lcom/xiaomi/passport/webview/CookieFillAutoLoginULPT;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 98
    .line 99
    iget-object p1, p1, Lm6/e;->d:Lm6/e$d;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget-boolean p1, p1, Lm6/e$d;->a:Z

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    new-instance p1, Lcom/xiaomi/passport/webview/HeaderFillActivatorTokenULPT;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/xiaomi/passport/webview/HeaderFillActivatorTokenULPT;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 116
    .line 117
    iget-object p1, p1, Lm6/e;->e:Lm6/e$e;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    iget-object p1, p1, Lm6/e$e;->b:[Lcom/xiaomi/passport/webview/UrlLoadPrepareTask;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    array-length v2, p1

    .line 126
    :goto_1
    if-ge v1, v2, :cond_5

    .line 127
    .line 128
    aget-object v3, p1, v1

    .line 129
    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    return-object v0
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

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->d:La7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->d:La7/b;

    .line 12
    .line 13
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->d:La7/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La7/b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, La7/b;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->d:La7/b;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, La7/b;->f(Z)La7/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Ln5/g;->H:I

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->d:La7/b;

    .line 27
    .line 28
    invoke-virtual {v0}, La7/b;->show()V

    .line 29
    .line 30
    .line 31
    return-void
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
.end method

.method public a(Lcom/xiaomi/passport/webview/a;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->f:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->B()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public f(Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->B()V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->f:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->I()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->J()V

    .line 16
    .line 17
    .line 18
    :goto_0
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
.end method

.method public m(Lcom/xiaomi/passport/webview/a;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->c:Lx5/f$b;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lx5/f$b;->a(IILandroid/content/Intent;)V

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

.method public onBackClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onCopyClicked(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 2
    .line 3
    iget-object p1, p1, Lm6/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v0, p1, v1}, Lb7/f;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 8
    .line 9
    .line 10
    sget p1, Ln5/g;->B:I

    .line 11
    .line 12
    invoke-static {p0, p1}, Lz6/a;->a(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/l;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/l;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/l;->a(Landroid/app/Activity;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->E(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 40
    .line 41
    iget-object p1, p1, Lm6/e;->h:Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;->onPageEntered(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
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

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/passport/webview/a;->destroy()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 15
    .line 16
    iget-object v0, v0, Lm6/e;->h:Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;->onPageExited(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 24
    .line 25
    .line 26
    return-void
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
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->E(Landroid/os/Bundle;)V

    .line 6
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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/passport/webview/a;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/xiaomi/passport/webview/a;->getDestroyedStateBundle()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->D(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
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
.end method

.method public onRetryClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->F()V

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

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->a:Lcom/xiaomi/passport/webview/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 9
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

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 5
    .line 6
    iget-object v0, v0, Lm6/e;->h:Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;->onPageShown(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 2
    .line 3
    iget-object v0, v0, Lm6/e;->h:Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lcom/xiaomi/passport/webview/PassportJsbWebPageLifecycleListener;->onPageHidden(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    .line 11
    .line 12
    .line 13
    return-void
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

.method public q(Lcom/xiaomi/passport/webview/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->f:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->e:Z

    .line 5
    .line 6
    return-void
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

.method public v(Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected y(Lm6/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/e;",
            ")",
            "Ljava/util/List<",
            "Lm6/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lm6/e;->e:Lm6/e$e;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lm6/e$e;->c:[Lcom/xiaomi/passport/jsb/ParcelablePassportJsbMethod;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    aget-object v3, p1, v2

    .line 19
    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v0
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

.method protected z(Lm6/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/webview/UrlInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lm6/e;->e:Lm6/e$e;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lm6/e$e;->a:[Lcom/xiaomi/passport/webview/UrlInterceptor;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    aget-object v3, p1, v2

    .line 19
    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;->b:Lm6/e;

    .line 29
    .line 30
    iget-boolean v1, v1, Lm6/e;->g:Z

    .line 31
    .line 32
    invoke-direct {p1, p0, v1}, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;-><init>(Landroid/app/Activity;Z)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/xiaomi/passport/webview/DeeplinkUrlInterceptor;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/xiaomi/passport/webview/DeeplinkUrlInterceptor;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-object v0
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
