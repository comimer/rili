.class public Lcom/xiaomi/onetrack/util/oaid/helpers/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->b(Ljava/lang/String;)Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->o:Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->p:Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    sget-object p2, Lcom/xiaomi/onetrack/util/oaid/helpers/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    .line 9
    :pswitch_0
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/m;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/m;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :pswitch_1
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/i;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :pswitch_2
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 12
    :pswitch_3
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/l;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/l;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :pswitch_4
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/h;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/h;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :pswitch_5
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/k;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/k;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 15
    :pswitch_6
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/j;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :pswitch_7
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/f;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/f;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 17
    :pswitch_8
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/e;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 18
    :pswitch_9
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/d;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/d;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 19
    :pswitch_a
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/a;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/a;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "undefined oaid method of manufacturer %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 2

    const-string v0, "ro.build.freeme.label"

    .line 21
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FREEMEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    const-string v0, "ro.ssui.product"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "unknown"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
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
