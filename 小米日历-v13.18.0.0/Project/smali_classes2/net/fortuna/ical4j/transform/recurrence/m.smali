.class public final synthetic Lnet/fortuna/ical4j/transform/recurrence/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/transform/recurrence/BySecondRule$ExpansionFilter;

.field public final synthetic b:Ljava/util/Calendar;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lnet/fortuna/ical4j/model/Date;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/BySecondRule$ExpansionFilter;Ljava/util/Calendar;Ljava/util/List;Lnet/fortuna/ical4j/model/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->a:Lnet/fortuna/ical4j/transform/recurrence/BySecondRule$ExpansionFilter;

    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->b:Ljava/util/Calendar;

    iput-object p3, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->c:Ljava/util/List;

    iput-object p4, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->d:Lnet/fortuna/ical4j/model/Date;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->a:Lnet/fortuna/ical4j/transform/recurrence/BySecondRule$ExpansionFilter;

    iget-object v1, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->b:Ljava/util/Calendar;

    iget-object v2, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->c:Ljava/util/List;

    iget-object v3, p0, Lnet/fortuna/ical4j/transform/recurrence/m;->d:Lnet/fortuna/ical4j/model/Date;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, p1}, Lnet/fortuna/ical4j/transform/recurrence/BySecondRule$ExpansionFilter;->a(Lnet/fortuna/ical4j/transform/recurrence/BySecondRule$ExpansionFilter;Ljava/util/Calendar;Ljava/util/List;Lnet/fortuna/ical4j/model/Date;Ljava/lang/Integer;)V

    return-void
.end method
