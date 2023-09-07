.class public final synthetic Lcom/miui/calendar/card/single/local/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/SummarySingleCard;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/p;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iput p2, p0, Lcom/miui/calendar/card/single/local/p;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/p;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iget v1, p0, Lcom/miui/calendar/card/single/local/p;->b:I

    invoke-static {v0, v1}, Lcom/miui/calendar/card/single/local/SummarySingleCard$c;->n0(Lcom/miui/calendar/card/single/local/SummarySingleCard;I)V

    return-void
.end method
