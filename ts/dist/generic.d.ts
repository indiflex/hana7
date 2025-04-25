export declare class Factory<T> {
    protected products: T[];
    constructor(product: T);
    create(product: T): void;
    getProducts(): T[];
}
export {};
