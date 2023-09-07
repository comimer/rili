.class Lcom/android/calendar/common/u$e$c;
.super Landroid/os/AsyncTask;
.source "ResolverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/common/u$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/calendar/common/u$e$d;",
        "Ljava/lang/Void;",
        "Lcom/android/calendar/common/u$e$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/android/calendar/common/u$e;


# direct methods
.method constructor <init>(Lcom/android/calendar/common/u$e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/u$e$c;->b:Lcom/android/calendar/common/u$e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/common/u$e$c;->a:Ljava/lang/ref/WeakReference;

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

.method private b(Lcom/android/calendar/common/u$e$d;)Lcom/android/calendar/common/u$e$a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/android/calendar/common/u$e$d;->c:Lcom/android/calendar/common/u$b;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/calendar/common/u$b;->b()Landroid/content/pm/ResolveInfo;

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/calendar/common/u$e$c;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1, p1}, Lcom/android/calendar/common/u;->g(Landroid/content/Context;Lcom/android/calendar/common/u$b;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    move-object v0, p1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "ResolverAdapter"

    .line 29
    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    new-instance p1, Lcom/android/calendar/common/u$e$a;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/calendar/common/u$e$c;->b:Lcom/android/calendar/common/u$e;

    .line 36
    .line 37
    invoke-direct {p1, v1, v0}, Lcom/android/calendar/common/u$e$a;-><init>(Lcom/android/calendar/common/u$e;Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    return-object p1
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
.method protected varargs a([Lcom/android/calendar/common/u$e$d;)Lcom/android/calendar/common/u$e$b;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/android/calendar/common/u$e$c;->b(Lcom/android/calendar/common/u$e$d;)Lcom/android/calendar/common/u$e$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p1, Lcom/android/calendar/common/u$e$d;->c:Lcom/android/calendar/common/u$b;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/calendar/common/u$b;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/calendar/common/u$e$b;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/calendar/common/u$e$a;->a:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lcom/android/calendar/common/u$e$b;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/android/calendar/common/u$e$b;->a(Lcom/android/calendar/common/u$e$d;)Lcom/android/calendar/common/u$e$b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return-object p1
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

.method protected c(Lcom/android/calendar/common/u$e$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/u$e$c;->b:Lcom/android/calendar/common/u$e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/calendar/common/u$e;->a(Lcom/android/calendar/common/u$e;Lcom/android/calendar/common/u$e$b;)V

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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/calendar/common/u$e$d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/u$e$c;->a([Lcom/android/calendar/common/u$e$d;)Lcom/android/calendar/common/u$e$b;

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
    check-cast p1, Lcom/android/calendar/common/u$e$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/u$e$c;->c(Lcom/android/calendar/common/u$e$b;)V

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
