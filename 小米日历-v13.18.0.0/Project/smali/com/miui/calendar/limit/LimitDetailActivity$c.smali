.class Lcom/miui/calendar/limit/LimitDetailActivity$c;
.super Landroid/os/AsyncTask;
.source "LimitDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/limit/LimitDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/limit/LimitDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/calendar/limit/LimitDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/calendar/limit/LimitDetailActivity;Lcom/miui/calendar/limit/LimitDetailActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/calendar/limit/LimitDetailActivity$c;-><init>(Lcom/miui/calendar/limit/LimitDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitDetailActivity;->a0(Lcom/miui/calendar/limit/LimitDetailActivity;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/miui/calendar/limit/a;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcom/miui/calendar/limit/LimitDetailActivity;->Z(Lcom/miui/calendar/limit/LimitDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitDetailActivity;->b0(Lcom/miui/calendar/limit/LimitDetailActivity;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitDetailActivity;->a0(Lcom/miui/calendar/limit/LimitDetailActivity;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "limit_rule"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/miui/calendar/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
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

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/miui/calendar/limit/LimitDetailActivity;->c0(Lcom/miui/calendar/limit/LimitDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitDetailActivity;->d0(Lcom/miui/calendar/limit/LimitDetailActivity;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitDetailActivity;->e0(Lcom/miui/calendar/limit/LimitDetailActivity;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a:Lcom/miui/calendar/limit/LimitDetailActivity;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lcom/miui/calendar/limit/LimitDetailActivity;->f0(Lcom/miui/calendar/limit/LimitDetailActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/limit/LimitDetailActivity$c;->a([Ljava/lang/Void;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/limit/LimitDetailActivity$c;->b(Ljava/lang/String;)V

    .line 4
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
.end method
