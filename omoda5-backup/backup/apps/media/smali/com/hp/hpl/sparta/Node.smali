.class public abstract Lcom/hp/hpl/sparta/Node;
.super Ljava/lang/Object;


# instance fields
.field private annotation_:Ljava/lang/Object;

.field private doc_:Lcom/hp/hpl/sparta/Document;

.field private hash_:I

.field private nextSibling_:Lcom/hp/hpl/sparta/Node;

.field private parentNode_:Lcom/hp/hpl/sparta/Element;

.field private previousSibling_:Lcom/hp/hpl/sparta/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->parentNode_:Lcom/hp/hpl/sparta/Element;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->annotation_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    return-void
.end method

.method protected static htmlEncode(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_1

    if-ge v2, v0, :cond_0

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/16 v4, 0x22

    if-eq v3, v4, :cond_7

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_6

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x26

    if-eq v3, v4, :cond_4

    const/16 v4, 0x27

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v3, "&#39;"

    goto :goto_1

    :cond_4
    const-string v3, "&amp;"

    goto :goto_1

    :cond_5
    const-string v3, "&gt;"

    goto :goto_1

    :cond_6
    const-string v3, "&lt;"

    goto :goto_1

    :cond_7
    const-string v3, "&quot;"

    :goto_1
    if-eqz v3, :cond_8

    sub-int v4, v1, v2

    invoke-virtual {p0, p1, v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method protected abstract computeHashCode()I
.end method

.method public getAnnotation()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Node;->annotation_:Ljava/lang/Object;

    return-object p0
.end method

.method public getNextSibling()Lcom/hp/hpl/sparta/Node;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    return-object p0
.end method

.method public getOwnerDocument()Lcom/hp/hpl/sparta/Document;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    return-object p0
.end method

.method public getParentNode()Lcom/hp/hpl/sparta/Element;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Node;->parentNode_:Lcom/hp/hpl/sparta/Element;

    return-object p0
.end method

.method public getPreviousSibling()Lcom/hp/hpl/sparta/Node;
    .locals 0

    iget-object p0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    :cond_0
    iget p0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    return p0
.end method

.method insertAtEndOfLinkedList(Lcom/hp/hpl/sparta/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_0
    return-void
.end method

.method makeMatching(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->getNodeTest()Lcom/hp/hpl/sparta/xpath/NodeTest;

    move-result-object v0

    instance-of v1, v0, Lcom/hp/hpl/sparta/xpath/ElementTest;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/ElementTest;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/ElementTest;->getTagName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/hp/hpl/sparta/Element;

    invoke-direct {v0, v6}, Lcom/hp/hpl/sparta/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object p2

    new-instance v7, Lcom/hp/hpl/sparta/Node$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hp/hpl/sparta/Node$1;-><init>(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;->accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/hp/hpl/sparta/ParseException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, "\" in \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\" is not an element test"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method notifyObservers()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    iget-object p0, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Document;->notifyObservers()V

    :cond_0
    return-void
.end method

.method removeFromLinkedList()V
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v1, v0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v1, v0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    return-void
.end method

.method replaceInLinkedList(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p1, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p1, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    return-void
.end method

.method public setAnnotation(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->annotation_:Ljava/lang/Object;

    return-void
.end method

.method setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    return-void
.end method

.method setParentNode(Lcom/hp/hpl/sparta/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->parentNode_:Lcom/hp/hpl/sparta/Element;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/hp/hpl/sparta/Node;->toString(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract toString(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toXml()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/hp/hpl/sparta/Node;->toXml(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method abstract toXml(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract xpathSelectStrings(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public xpathSetStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const-string v0, "Xpath expression \""

    const/16 v1, 0x2f

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text()"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x40

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/hp/hpl/sparta/ParseException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Last step of Xpath expression \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" is not \"text()\" and does not start with a \'@\'. It starts with a \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v4, :cond_5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/hp/hpl/sparta/Node;->xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v2, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1, p2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/hp/hpl/sparta/ParseException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" specifies zero-length attribute name\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/hp/hpl/sparta/Node;->xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_7

    move v3, v1

    :goto_3
    return v3

    :cond_7
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/hpl/sparta/Element;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_b

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_8

    new-instance v4, Lcom/hp/hpl/sparta/Text;

    invoke-direct {v4, p2}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v2, v4}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    move v1, v6

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v5}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {v5, p2}, Lcom/hp/hpl/sparta/Text;->setData(Ljava/lang/String;)V

    move v1, v6

    :cond_9
    move v5, v3

    :goto_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v2, v1}, Lcom/hp/hpl/sparta/Element;->removeChild(Lcom/hp/hpl/sparta/Node;)V

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_5

    :cond_b
    instance-of v7, v5, Lcom/hp/hpl/sparta/Text;

    if-eqz v7, :cond_c

    move-object v7, v5

    check-cast v7, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v5}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v5
    :try_end_0
    .catch Lcom/hp/hpl/sparta/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance p0, Lcom/hp/hpl/sparta/ParseException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" is not in the form \"xpathExpression/@attributeName\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Assertion failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
