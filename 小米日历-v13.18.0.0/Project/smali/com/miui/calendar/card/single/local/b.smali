.class public final synthetic Lcom/miui/calendar/card/single/local/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/calendar/view/DynamicLinearLayout$b;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/c;

.field public final synthetic b:I

.field public final synthetic c:Ls3/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/c;ILs3/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/b;->a:Lcom/miui/calendar/card/single/local/c;

    iput p2, p0, Lcom/miui/calendar/card/single/local/b;->b:I

    iput-object p3, p0, Lcom/miui/calendar/card/single/local/b;->c:Ls3/a$a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/b;->a:Lcom/miui/calendar/card/single/local/c;

    iget v1, p0, Lcom/miui/calendar/card/single/local/b;->b:I

    iget-object v2, p0, Lcom/miui/calendar/card/single/local/b;->c:Ls3/a$a;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/local/c;->u(Lcom/miui/calendar/card/single/local/c;ILs3/a$a;I)V

    return-void
.end method
