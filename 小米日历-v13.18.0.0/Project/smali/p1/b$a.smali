.class Lp1/b$a;
.super Ljava/lang/Object;
.source "AnniversaryHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp1/b;->e(Ljava/util/List;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/calendar/common/event/schema/AnniversaryEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp1/b$a;->a:Ljava/util/Calendar;

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
.method public a(Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/b$a;->a:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lp1/b$a;->a:Ljava/util/Calendar;

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_0
    iget-object v0, p0, Lp1/b$a;->a:Ljava/util/Calendar;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-gtz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lp1/b$a;->a:Ljava/util/Calendar;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
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
    check-cast p1, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 2
    .line 3
    check-cast p2, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lp1/b$a;->a(Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)I

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
