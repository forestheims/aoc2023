module DoublyLinkedList
    export DoubleNode, LinkedList

    mutable struct DoubleNode{T}
        data::T
        next::Union{DoubleNode{T}, Nothing}
        prev::Union{DoubleNode{T}, Nothing}

        # Constructor for DoubleNode
        function DoubleNode(data::T, next::Union{DoubleNode{T}, Nothing}=nothing, prev::Union{DoubleNode{T}, Nothing}=nothing)
            new{T}(data, next, prev)
        end
    end

    mutable struct LinkedList{T}
        head::Union{DoubleNode{T}, Nothing}
        tail::Union{DoubleNode{T}, Nothing}

        function LinkedList()
            new{T}(nothing, nothing)
        end
    end

    function insert_node(list::LinkedList{T}, data::T)
        new_node = DoubleNode(data)
        if list.head === nothing
            list.head = new_node
            list.tail = new_node
        else
            new_node.prev = list.tail
            list.tail.next = new_node
            list.tail = new_node
        end
    end

    function delete_node(list::LinkedList{T}, node::DoubleNode{T})
        if node === list.head
            list.head = node.next
        else
            node.prev.next = node.next
        end

        if node === list.tail
            list.tail = node.prev
        else
            node.next.prev = node.prev
        end
    end

    function traverse(list::LinkedList{T})
        current = list.head
        while current !== nothing
            println(current.data)
            current = current.next
        end
    end
end