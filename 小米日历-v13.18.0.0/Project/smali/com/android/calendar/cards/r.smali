.class public final synthetic Lcom/android/calendar/cards/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/calendar/cards/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/cards/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/r;->a:Lcom/android/calendar/cards/b;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/cards/r;->a:Lcom/android/calendar/cards/b;

    check-cast p1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    invoke-static {v0, p1}, Lcom/android/calendar/cards/t;->b(Lcom/android/calendar/cards/b;Lcom/miui/calendar/card/schema/CustomCardSchema;)Z

    move-result p1

    return p1
.end method
