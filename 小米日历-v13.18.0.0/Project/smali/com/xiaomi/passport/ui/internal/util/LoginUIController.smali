.class public Lcom/xiaomi/passport/ui/internal/util/LoginUIController;
.super Ljava/lang/Object;
.source "LoginUIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;,
        Lcom/xiaomi/passport/ui/internal/util/LoginUIController$UIControllerType;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/passport/ui/internal/util/LoginUIController$UIControllerType;",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Activity;

.field private c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

.field private d:La7/b;

.field private e:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->a:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->b:Landroid/app/Activity;

    .line 12
    .line 13
    new-instance p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 19
    .line 20
    new-instance p1, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$a;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$a;-><init>(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->e:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->k(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;)V

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
.end method

.method static synthetic a(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->b:Landroid/app/Activity;

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

.method static synthetic b(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->c()V

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

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d:La7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d:La7/b;

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

.method private d(Lcom/xiaomi/passport/ui/internal/util/LoginUIController$UIControllerType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/concurrent/FutureTask;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 21
    return p1
    .line 22
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d:La7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, La7/b;

    .line 9
    .line 10
    invoke-direct {v0, p1}, La7/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d:La7/b;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d:La7/b;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {p1, p2}, La7/b;->f(Z)La7/b;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d:La7/b;

    .line 25
    .line 26
    invoke-virtual {p1}, La7/b;->show()V

    .line 27
    .line 28
    .line 29
    return-void
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
.method public e(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$UIControllerType;->PASSWORD_LOGIN:Lcom/xiaomi/passport/ui/internal/util/LoginUIController$UIControllerType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->d(Lcom/xiaomi/passport/ui/internal/util/LoginUIController$UIControllerType;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "LoginUIController"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p1, "password login has not finished"

    .line 12
    .line 13
    invoke-static {v2, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p2, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->b:Landroid/app/Activity;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->b:Landroid/app/Activity;

    .line 31
    .line 32
    sget v2, Ln5/g;->A:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lb7/d;->a()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$b;

    .line 45
    .line 46
    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$b;-><init>(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lcom/xiaomi/passport/uicontroller/a;

    .line 50
    .line 51
    new-instance v2, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$c;

    .line 52
    .line 53
    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/ui/internal/util/LoginUIController$c;-><init>(Lcom/xiaomi/passport/ui/internal/util/LoginUIController;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v2, v1}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lb7/r;->a()Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/util/LoginUIController;->a:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :goto_0
    const-string p1, "activity non exist"

    .line 73
    .line 74
    invoke-static {v2, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string p2, "should implements login callback"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
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
