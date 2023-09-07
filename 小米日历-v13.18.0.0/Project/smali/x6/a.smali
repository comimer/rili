.class public Lx6/a;
.super Lu5/a;
.source "ServerPassThroughErrorControl.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx6/a;->a:Ljava/util/Map;

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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu5/a;-><init>()V

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

.method private static n()V
    .locals 4

    .line 1
    sget-object v0, Lx6/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;

    .line 4
    .line 5
    const-class v2, Lcom/xiaomi/passport/ui/internal/PassportJsbWebViewActivity;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;-><init>(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "PassportJsbWebViewActivity"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;

    .line 16
    .line 17
    const-class v2, Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 18
    .line 19
    new-instance v3, Lx6/a$a;

    .line 20
    .line 21
    invoke-direct {v3}, Lx6/a$a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;-><init>(Ljava/lang/Class;Lv5/b;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "LoginActivity"

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void
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


# virtual methods
.method protected b(Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ErrorHandleInfo;)Landroid/app/Dialog;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "createDialog>>>"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ServerPassThroughErrorControl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, La7/b;

    .line 24
    .line 25
    invoke-direct {v0, p1}, La7/b;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ErrorHandleInfo;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, La7/b;->l(Ljava/lang/String;)La7/b;

    .line 31
    .line 32
    .line 33
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ErrorHandleInfo;->d:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, La7/b;->g(Ljava/lang/CharSequence;)La7/b;

    .line 36
    .line 37
    .line 38
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ErrorHandleInfo;->e:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->getText()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lx6/a$b;

    .line 47
    .line 48
    invoke-direct {v3, p0, p1, v1}, Lx6/a$b;-><init>(Lx6/a;Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, La7/b;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ErrorHandleInfo;->f:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->getText()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Lx6/a$c;

    .line 63
    .line 64
    invoke-direct {v3, p0, p1, v1}, Lx6/a$c;-><init>(Lx6/a;Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, La7/b;->j(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ErrorHandleInfo;->g:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->getText()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lx6/a$d;

    .line 79
    .line 80
    invoke-direct {v2, p0, p1, p2}, Lx6/a$d;-><init>(Lx6/a;Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, La7/b;->k(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-object v0
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

.method protected e()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lx6/a;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object v0
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

.method protected i(Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "jumpToDefWebPageWhenNativeJumpErr>>>"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ServerPassThroughErrorControl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lx6/a;->e()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "PassportJsbWebViewActivity"

    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->getExtraWebUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->getPageParams()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    new-instance v3, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_1
    const-string v4, "url"

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/ButtonInfo;->getExtraWebUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0, v3}, Lu5/a;->c(Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/a;Ljava/util/Map;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "jumpToDefWebPageWhenNativeJumpErr>>>errMsg:"

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    return v2
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
