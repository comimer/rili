.class final Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;
.super Ljava/lang/Object;
.source "ClassScheduleSingleCard.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassScheduleExtraSchema"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;,
        Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0003\u0018\u00002\u00020\u0001:\u0002 !B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u001e\u0010\u0006\"\u0004\u0008\u001f\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;",
        "",
        "()V",
        "cardId",
        "",
        "getCardId",
        "()Ljava/lang/Integer;",
        "setCardId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "courses",
        "Ljava/util/ArrayList;",
        "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
        "getCourses",
        "()Ljava/util/ArrayList;",
        "setCourses",
        "(Ljava/util/ArrayList;)V",
        "coursesDesc",
        "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;",
        "getCoursesDesc",
        "()Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;",
        "setCoursesDesc",
        "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;)V",
        "day",
        "getDay",
        "setDay",
        "presentWeek",
        "getPresentWeek",
        "setPresentWeek",
        "showType",
        "getShowType",
        "setShowType",
        "Course",
        "CoursesDesc",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private cardId:Ljava/lang/Integer;

.field private courses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
            ">;"
        }
    .end annotation
.end field

.field private coursesDesc:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;

.field private day:Ljava/lang/Integer;

.field private presentWeek:Ljava/lang/Integer;

.field private showType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->cardId:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->showType:Ljava/lang/Integer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->presentWeek:Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->day:Ljava/lang/Integer;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public final getCardId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->cardId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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

.method public final getCourses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->courses:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
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

.method public final getCoursesDesc()Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->coursesDesc:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;

    .line 2
    .line 3
    return-object v0
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

.method public final getDay()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->day:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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

.method public final getPresentWeek()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->presentWeek:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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

.method public final getShowType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->showType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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

.method public final setCardId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->cardId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
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

.method public final setCourses(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->courses:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
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

.method public final setCoursesDesc(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->coursesDesc:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;

    .line 2
    .line 3
    return-void
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

.method public final setDay(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->day:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
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

.method public final setPresentWeek(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->presentWeek:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
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

.method public final setShowType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;->showType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
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
