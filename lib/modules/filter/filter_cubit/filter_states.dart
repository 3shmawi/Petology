abstract class FilterStates {}

class FilterInitialState extends FilterStates {}




//*Pets by id
class GetPetsByIdLoadingState extends FilterStates {}

class GetPetsByIdSuccessState extends FilterStates {}

class GetPetsByIdErrorState extends FilterStates {}

//*Pets by id
class GetFilterByIdLoadingState extends FilterStates {}

class GetFilterByIdSuccessState extends FilterStates {}

class GetFilterByIdErrorState extends FilterStates {}
