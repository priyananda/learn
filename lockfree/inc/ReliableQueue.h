#pragma once

/*
 * A reliable_queue is a queue with the following characteristics
 * 1. push() pushes an element of type T to the back the queue. This operation is lock-free and can be
 *		concurrently called on multiple threads.
 * 2. try_pop() removes an element from the front of the queue. If there is no element
 *		it will immediately fail.
 * 3. pop() removes an element from the front of the queue. will spin-wait if queue is empty.
 * 4. approximate_size() gives us the size of the queue, but it is not guaranteed to be correct.
 */
template <typename T, typename Allocator = std::allocator<T>>
class reliable_queue
{
public:
	
};