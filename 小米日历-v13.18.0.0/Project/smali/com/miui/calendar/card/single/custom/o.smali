.class public final synthetic Lcom/miui/calendar/card/single/custom/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/custom/HistorySingleCard;

.field public final synthetic b:Lcom/miui/calendar/card/b$b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Lcom/miui/calendar/card/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/o;->a:Lcom/miui/calendar/card/single/custom/HistorySingleCard;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/o;->b:Lcom/miui/calendar/card/b$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/o;->a:Lcom/miui/calendar/card/single/custom/HistorySingleCard;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/o;->b:Lcom/miui/calendar/card/b$b;

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->D(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Lcom/miui/calendar/card/b$b;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
