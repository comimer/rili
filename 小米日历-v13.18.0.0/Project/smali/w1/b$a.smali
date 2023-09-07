.class Lw1/b$a;
.super Ljava/lang/Object;
.source "CountdownHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/b;->e(Ljava/util/List;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/calendar/common/event/schema/CountdownEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw1/b$a;->a:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public a(Lcom/android/calendar/common/event/schema/CountdownEvent;Lcom/android/calendar/common/event/schema/CountdownEvent;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/b$a;->a:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calNextCountdownDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lw1/b$a;->a:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calNextCountdownDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    sub-int/2addr p1, p2

    .line 22
    return p1
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

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 2
    .line 3
    check-cast p2, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lw1/b$a;->a(Lcom/android/calendar/common/event/schema/CountdownEvent;Lcom/android/calendar/common/event/schema/CountdownEvent;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
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
