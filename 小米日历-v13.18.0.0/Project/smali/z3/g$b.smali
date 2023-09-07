.class Lz3/g$b;
.super Ljava/lang/Object;
.source "HolidayLogic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz3/g;->i(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lz3/g;


# direct methods
.method constructor <init>(Lz3/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz3/g$b;->a:Lz3/g;

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
.method public a(Lcom/miui/calendar/holiday/model/HolidayBriefSchema;Lcom/miui/calendar/holiday/model/HolidayBriefSchema;)I
    .locals 0

    .line 1
    iget p1, p1, Lcom/miui/calendar/holiday/model/HolidayBriefSchema;->sequence:I

    .line 2
    .line 3
    iget p2, p2, Lcom/miui/calendar/holiday/model/HolidayBriefSchema;->sequence:I

    .line 4
    .line 5
    if-le p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    if-ge p1, p2, :cond_1

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    return p1
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

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/calendar/holiday/model/HolidayBriefSchema;

    .line 2
    .line 3
    check-cast p2, Lcom/miui/calendar/holiday/model/HolidayBriefSchema;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz3/g$b;->a(Lcom/miui/calendar/holiday/model/HolidayBriefSchema;Lcom/miui/calendar/holiday/model/HolidayBriefSchema;)I

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
