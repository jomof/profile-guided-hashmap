import os
from llama_index.core import StorageContext, load_index_from_storage
from llama_index.core import VectorStoreIndex, SimpleDirectoryReader



# rebuild storage context
storage_context = StorageContext.from_defaults(persist_dir="./storage")
# load index
index = load_index_from_storage(storage_context)
#documents = SimpleDirectoryReader("external/llvm").load_data()
# index = VectorStoreIndex.from_documents(documents)
# index.storage_context.persist()

query_engine = index.as_query_engine()
result = query_engine.query("Please find one bug in this codebase. Show me the file and line.")
print(result)