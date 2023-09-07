.class Lk3/d$a;
.super Ljava/lang/Object;
.source "MiAccountUtils.java"

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk3/d;->j(Landroid/content/Context;Lk3/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/passport/accountmanager/h<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lk3/d$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lk3/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk3/d$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lk3/d$a;->b:Lk3/d$b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static synthetic b(Lcom/xiaomi/passport/accountmanager/i;Landroid/content/Context;Lk3/d$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lk3/d$a;->c(Lcom/xiaomi/passport/accountmanager/i;Landroid/content/Context;Lk3/d$b;)V

    return-void
.end method

.method private static synthetic c(Lcom/xiaomi/passport/accountmanager/i;Landroid/content/Context;Lk3/d$b;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->account:Landroid/accounts/Account;

    .line 8
    .line 9
    invoke-static {p0, p1}, Lk3/d;->c(Landroid/accounts/Account;Landroid/content/Context;)Lcom/miui/calendar/account/mi/MiAccountSchema;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p2}, Lk3/d;->d(Lcom/miui/calendar/account/mi/MiAccountSchema;Lk3/d$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p2, "makeAccountVisible: "

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "Cal:D:AccountUtils"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
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


# virtual methods
.method public a(Lcom/xiaomi/passport/accountmanager/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/accountmanager/i<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    iget-object v1, p0, Lk3/d$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lk3/d$a;->b:Lk3/d$b;

    .line 6
    .line 7
    new-instance v3, Lk3/c;

    .line 8
    .line 9
    invoke-direct {v3, p1, v1, v2}, Lk3/c;-><init>(Lcom/xiaomi/passport/accountmanager/i;Landroid/content/Context;Lk3/d$b;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
