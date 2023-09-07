.class public final synthetic Lcom/android/calendar/cards/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/j0;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/cards/j0;->a:Ljava/util/Map;

    check-cast p1, Lcom/android/calendar/common/event/schema/CountdownEvent;

    check-cast p2, Lcom/android/calendar/common/event/schema/CountdownEvent;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/cards/k0;->l(Ljava/util/Map;Lcom/android/calendar/common/event/schema/CountdownEvent;Lcom/android/calendar/common/event/schema/CountdownEvent;)I

    move-result p1

    return p1
.end method
