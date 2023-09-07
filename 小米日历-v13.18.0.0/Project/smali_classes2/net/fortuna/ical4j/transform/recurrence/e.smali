.class public final synthetic Lnet/fortuna/ical4j/transform/recurrence/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/e;->a:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/e;->a:Ljava/util/Calendar;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$MonthlyExpansionFilter;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
